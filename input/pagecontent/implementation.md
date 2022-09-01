## Implementation Notes
This page contains miscellaneous information on FHIR implementation. This content is primarily directed at implementers of the Human Services Directory.

The HSDS model is mapped to corresponding elements in the FHIR profiles contained within this Implementation Guide (Organization, Location, HealthcareService).
### Conformance Requirements
The primary focus of this implementation guide is a RESTful API for obtaining data from a FHIR-enabled Human and Social Service Resource Directory. This API currently only supports a one-directional flow of information from a FHIR-enabled Human Services Directory into local environments (i.e., HTTP GETs).
An implementation that is conformant to this IG:
•	SHALL support profiles: Organization, HealthcareService, Location, and maybe PractitionerRole, and Practitioner
•	SHOULD support profiles: Endpoint

The conformance verbs (**SHALL, SHALL NOT, SHOULD, MAY**) used in this guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html).

### Privacy Considerations
Access to the Human Services Directory should not require authentication, and the server should not maintain any records that could associate the consumer with the entities that were queried.
A conformant Human Services Directory **SHALL NOT** require a directory mobile application to send consumer identifying information in order to query content.
A directory mobile application **SHALL NOT** send consumer identifiable information when querying a Human Services Directory.
### Must Support
When querying the Human Service Resource Directory Profiles defined in this IG, Must Support on any profile data element **SHALL** be interpreted as follows:

#### API Requirements (is this section necessary? Re-write)

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

Will be added

###	Representing and Searching Social and Human Service Resource Directory Data

This section provides examples of the canonical use of the profiles provided in this companion IG to help guide implementers to consistently use the profiles to enable 3rd party applications to access social services directories. 

The design is based on the following search types:

| Search               	| Example 	| Focal Resource and Field                             	| Qualifications of Search 	|
|----------------------	|---------	|------------------------------------------------------	|--------------------------	|
| General Search       	| TBD     	| HealthcareService.category,   HealthcareService.type 	| Location                 	|
| Organization by Name 	| TBD     	| Organization.name                                    	| Location                 	|
| Others?              	| TBD     	| TBD                                                  	| TBD                      	|
 			
The content in this section of the IG is based on the examples provided and on the patterns provided here.
Specific examples are referenced in the text below.

#### Search for Active Organizations
Sample query to search for currently active Organizations (replace date in query with current date):
provide example query
To search for Organizations that will be active at a future time, change the date to a future date.

If no period is provided, then it is assumed the Organization is active with no expiration date.
#### HealthcareService
The first type of search starts from HealthcareService.category and/or HealthcareService.type, so it is essential that each organization's services are supported by an appropriate set of HealthcareService instances. (Need to add language related to mapping local services to a standard taxonomy.)

Human and Social Service Resource HealthcareServices are typically provided by community-based organizations which are linked to a set of locations where each service is provided (or identified as a virtual service through an indicated set of virtual modalities within the scope of these requirements). 

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
An Endpoint instance provides the technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging.
Scenario	Example Instances
Payer Portal	AcmeOfCTPortalEndpoint


