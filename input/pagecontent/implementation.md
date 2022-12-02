## Implementation Notes
This page contains miscellaneous information on FHIR implementation. This content is primarily directed at implementers of the Human Services Directory.

The HSDS model is mapped to corresponding elements in the FHIR profiles contained within this Implementation Guide (Organization, Location, HealthcareService).

### Conformance Requirements
The primary focus of this implementation guide is a RESTful API for obtaining data from a FHIR-enabled Human and Social Service Resource Directory. This API currently only supports a one-directional flow of information from a FHIR-enabled Human Services Directory into local environments (i.e., HTTP GETs).

An implementation that is conformant to this IG:
- SHALL support profiles: Organization, HealthcareService, and Location
- MAY support profiles: Endpoint

The conformance verbs (**SHALL, SHALL NOT, SHOULD, MAY**) used in this guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html).

### Privacy Considerations
A conformant Human Services Directory **SHALL NOT** require a directory mobile application to send consumer identifying information in order to query content.
A directory mobile application **SHALL NOT** send consumer identifiable information when querying a Human Services Directory.
### Must Support
When querying the Human Service Resource Directory Profiles defined in this IG, Must Support on any profile data element **SHALL** be interpreted as follows:

#### API Requirements

- API actors **SHALL* be capable of populating all Must Support data elements as part of the query results.
- In situations where information on a particular Must Support element is not present and the minimum cardinality is 0, the API actors **SHALL NOT** include the data elements in the resource instances returns as part of the query results.
- In situations where information on a particular data element is not present and the minimum cardinality id >0, the API **SHALL** send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.

#### Application Requirements 

- Application actors SHALL be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail.
- Application actors SHOULD be capable of displaying the data elements for human use or storing the information for other purposes.
- When querying the Human Service Resource Directory API, Application actors SHALL interpret missing Must Support data elements within resource instances as data not present.
- Consumer App actors SHALL be able to process resource instances containing Must Support data elements asserting missing information.

### Client Detection of Updates Directory Content

Each profile in this guide requires that the lastUpdate timestamp be provided as part of the profile's data content. Clients that cache query results can track additions or modifications to directory content through queries that filter content using the _lastUpdated search parameter. Clients should periodically check that data cached from past queries has not been deleted by querying for the same elements by _id.

### General Security Considerations
[
No Content

### FHIR Response Bundle
By default, the FHIR search result response invoked by the API only includes a FHIR Bundle resource containing resources that match the search criteria.  These resources include references and full URLs to other related resources so the consuming application can request additional related resources (e.g., querying Organization and Location resources associated with a HealthcareService resource). This results in a “chatty” interface since the consuming applications have to make several queries to get all of the information required for social care referrals. The FHIR specification supports **_include** as part of the search parameter to request that the server include the related resources specified by the _include. This means the _include has to specify each related resource linkage. Instead of taking that approach, this Implementation Guide suggests that FHIR servers respond with a FHIR bundle FHIR that includes the requested resource and all its related resources simultaneously. This allows consuming applications to perform a single query in order to receive all relevant data. In addition, this approach mimics the '/complete’ parameter supported by the Human Services Data API (HSDA).  

###	Representing and Searching Human Services Directory Data

A key objective for the FHIR IG for Human Services Directories is to address semantic interoperability within the human services domain, so that directory data exchanged between two or more systems is mutually understandable. 

Sematic interoperability enhances and is more desired than syntactic interoperability. With semantic interoperability, the data exchanged between two or more systems is not only able to be exchanged successfully, but the information contained within each exchange can also be understood by each system within the exchange. Semantic interoperability requires common terminologies to be specified so that the implementers and systems that adopt the IG can successfully exchange data more meaningfully.

Syntactic interoperability on the other hand, only supports the ability for two or more systems to exchange data using common structures, but the “meaning” of data contained within the exchange may not be understandable by all parties in the exchange unless certain elements are standardized in a codable manner using appropriate terminologies and taxonomies.

The HSDS specification used as the requirements basis for this IG is agnostic with respect to terminologies/taxonomies, as HSDS acknowledges the variations in human services taxonomies used by referral management systems, regional home-grown platforms, and for reporting requirements.  This IG incorporates the 211 Human Services Indexing System, endorsed by AIRS, solely as an example taxonomy.

The implementation guide was tested using the [Open Eligibility taxonomy](https://support.findhelp.com/hc/en-us/articles/4404055283227-The-Open-Eligibility-Project), consisting of two important concepts:  Human Services and Human Situations.  Other taxonomies for specialty human services, include [CMS' Home- and Community-Based Services (HCBS) taxonomy](https://wms-mmdl.cms.gov/WMS/help/TaxonomyCategoryDefinitions.pdf), [HUD HMIS Data Dictionary](https://www.hudexchange.info/resource/3824/hmis-data-dictionary/), [HMIS Data Standards](https://www.hudexchange.info/resource/3824/hmis-data-dictionary/), as well as other aging services data standardization efforts. Patient/client outcomes are an additional consideration to be met for the development and endorsement of an open-source, universal taxonomy for human and social services.  Given this complexity, this IG currently only provides an example how a common taxonomy could be used to identify human services. The issue of semantic interoperability will be addressed in a future, balloted version of this Implementation Guide.

Examples of the canonical use of the profiles are provided in the [**Examples** section](reference.html#Examples) of this IG to help implementers consistently use the profiles to enable third-party applications to access human services directories. The methods for searching human services directories based on the patterns is provided in the SearchParameters section.
 			
#### Search for Active Organizations
Sample query to search for currently active Organizations (replace date in query with current date):
provide example query
To search for Organizations that will be active at a future time, change the date to a future date.

If no period is provided, then it is assumed the Organization is active with no expiration date.
#### HealthcareService
The first type of search starts from HealthcareService.category and/or HealthcareService.type, so it is essential that each organization's services are supported by an appropriate set of HealthcareService instances.

Human Services are typically provided by community-based organizations. These services are linked to a set of locations where each service is provided (or is identified as a virtual service using a set of virtual modalities). 

These examples illustrate an organization that provides three distinct human and social services -- housing, nutrition, and employment -- at all of its locations. Community-based organizations should define and maintain up-to-date information on the set of Human and Social HealthcareServices they provide. 

he HealthcareService.category and HealthcareService.type fields represent the highest level of classification of services that are provided by community-based organizations.

Relevant examples:

| Scenario                          	| Example Instances         	     |
|-----------------------------------	|-----------------------------     |
| Silvers City Organization   	     	| SilversCityNutritionService      |
| City Food for Charities           	| FoodPantryService 	           |
| Virtual Counseling Organization    	| VirtualMHCounselingService       |
| Sanctuary City Organization       	| EmergencyImmigrantHousingService |


#### Location
Location instances provide information about location where services are provided, including contact information, address, accessibility, hours of operation and contact, as well as position (longitude and latitude). Locations can also be used to represent regions using an associated or attached GeoJSON object.

Relevant examples:

| Scenario                      	| Example Instances 	|
|-------------------------------	|-------------------	|
| Hospital Location #1          	| HospLoc1          	|
| Hospital Location #2          	| HospLoc2          	|
| Location used as CoverageArea 	| StateOfCTLocation 	|


#### Organization
Organization instances provide information about a specific organizations, including organization name, type, address and contact information. 

| Scenario                                           	| Example Instances         	|
|----------------------------------------------------	|---------------------------	|
| CBO member of a regional HIE                       	| MissouriHIE, NCoastHealth 	|
| CBO providing maternal services to local hospitals 	| EveryMotherCounts         	|


#### Endpoints
An Endpoint instance provides the technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging. The Endpoint resource/profile is not currently supported by HSDS and therefore has not been included in the mapping between HSDS and FHIR, so Endpoint can be ignored.

