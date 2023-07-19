## Implementation Notes
This page contains miscellaneous information on FHIR implementation. This content is primarily directed at implementers of the Human Services Directory.

The Human Services Data Specification (HSDS) model is mapped to corresponding elements in the FHIR profiles contained within this Implementation Guide (Organization, Location, HealthcareService).

### Conformance Requirements
The primary focus of this implementation guide is a RESTful API for obtaining data from a FHIR-enabled Human and Social Service Resource Directory. This API currently only supports a one-directional flow of information from a FHIR-enabled Human Services Directory into local environments (i.e., HTTP GETs). A RESTful API is an interface that allows computer systems to exchange information securely over the internet. REST stands for Representational State Transfer. This means that when a client requests a resource using a REST API, the server transfers back the current state of the resource in a standardized representation.

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
By default, the FHIR search result response invoked by the API only includes a FHIR Bundle resource containing resources that match the search criteria.  These resources include references and full Uniform Resource Locators (URL) to other related resources so the consuming application can request additional related resources (e.g., querying Organization and Location resources associated with a HealthcareService resource). This results in a “chatty” interface since the consuming applications have to make several queries to get all of the information required for social care referrals. The FHIR specification supports **_include** as part of the search parameter to request that the server include the related resources specified by the _include. This means the _include has to specify each related resource linkage. Instead of taking that approach, this Implementation Guide suggests that FHIR servers respond with a FHIR bundle that includes the requested resource and all its related resources simultaneously. This allows consuming applications to perform a single query in order to receive all relevant data. In addition, this approach mimics the '/complete’ parameter supported by the Human Services Data (HSDA) APIs.  

###	Representing and Searching Human Services Directory Data

A key objective for the FHIR IG for Human Services Directories is to advance interoperability in the human and social services domain by enabling human services directory data that is that mutually understandable to be exchanged between two or more systems. Several levels of interoperability are pertinent in the context of information technology, in particular, syntactic (also known as foundational) and semantic interoperability. 

Syntactic interoperability focuses on compatibility for the seamless exchange of data between systems. This involves standardizing data formats and protocols that enable data transmission. Examples include standard message formats such as HL7 Version 2, CDA and FHIR as well as communication protocols like TCP/IP and RESTful APIs for data exchange.

Sematic interoperability helps to ensure that the data being exchanged are understood and interpreted correctly by different systems. This requires the use of common terminologies, codes, and data models to enable a shared understanding of the information being exchanged. Vocabulary standards such as SNOMED CT, ICD-10-CM & ICS-10-PCS, CPT & HCPCS, LOINC, and RxNorm are used in U.S. healthcare exchange standards to support semantic interoperability by providing consistent representation of clinical concepts.
In the approach to creating this implementation, the Human Services Data Specification (HSDS) v.2.0.1 was used as the foundation for information requirements to ensure that data commonly represented in human and social services directories was available and could be mapped to the relevant FHIR profiles chosen for use in this guide. These FHIR profiles and APIs are to be used by FHIR enabled applications for the purpose of searching community-based directories for social services that community-based organizations provide to help address social needs of individuals, whether within the context of social care referrals, or for directory lookups in FHIR-enabled consumer applications. This implementation guide provides a map between local directory data and the FHIR profiles within this guide to implementers familiar with their local data and HSDS to facilitate implementation.

The [HSDS](https://docs.openreferral.org/en/v2.0.1/hsds/) is agnostic with respect to terminologies/taxonomies as it acknowledges the variations in human services taxonomies that are currently being used by referral management systems, regional home-grown platforms, and for reporting requirements. Patient/client outcomes are an additional consideration to be met for the development and endorsement of an open-source, universal taxonomy for human and social services.

This version of the IG (STU 1) supports but does not require, the use of any standard social services taxonomy. The guide has been tested under two separate Reference Implementations using directory data encoded using the 211 Human Services Indexing System (211 LA) and the [Open Eligibility taxonomy](https://support.findhelp.com/hc/en-us/articles/4404055283227-The-Open-Eligibility-Project). As currently defined, the implementation guide  can support the use of these vocabulary standards, any other data standardization efforts that support community services (e.g., the CMS [Home and Community-Based Services (HCBS) taxonomy](https://wms-mmdl.cms.gov/WMS/help/TaxonomyCategoryDefinitions.pdf), U.S. Department of Housing and Urban Development (HUD) [Homeless Management Information System (HMIS) Data Dictionary](https://www.hudexchange.info/resource/3824/hmis-data-dictionary/), as well as local directory codes. 

Given this complexity, this version of the IG only provides an example of how a common taxonomy could be used to search directories and to identify services. The issue of semantic interoperability may be addressed in a future, balloted version of this Implementation Guide.

Examples of the canonical use of the profiles are provided in the [Examples section](examples.html) of this IG to help implementers consistently use the profiles to enable third-party applications to access human services directories. The methods for searching human services directories based on these patterns is provided in the [SearchParameters section](artifacts.html#behavior-search-parameters).
 			
#### Search for Active Organizations
Sample query to search for currently active Organizations (replace date in query with current date):
provide example query
To search for Organizations that will be active at a future time, change the date to a future date.

If no period is provided, then it is assumed the Organization is active with no expiration date.
#### HealthcareService
The first type of search starts from HealthcareService.category and/or HealthcareService.type, so it is essential that each organization's services are supported by an appropriate set of HealthcareService instances.

Human Services are typically provided by community-based organizations. These services are linked to a set of locations where each service is provided (or is identified as a virtual service using a set of virtual modalities). 

These examples illustrate an organization that provides three distinct human and social services -- housing, nutrition, and employment -- at all of its locations. Community-based organizations should define and maintain up-to-date information on the set of Human and Social HealthcareServices they provide. 

The HealthcareService.category and HealthcareService.type fields represent the highest level of classification of services that are provided by community-based organizations.

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

