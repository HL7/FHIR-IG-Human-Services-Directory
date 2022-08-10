## Implementation Notes
This page contains miscellaneous information on FHIR implementation. This content is primarily directed at implementers of the Human Services Directory.
Add additional information about how users can facilitate adoption of this IG by mapping their local directory content to the HSDS implementation model. The HSDS model is mapped to corresponding elements in the FHIR profiles contained within this Implementation Guide (Organization, Location, HealthcareService).
### Conformance Requirements
The conformance verbs (SHALL, SHALL NOT, SHOULD, MAY) used in this guide are defined in FHIR Conformance Rules.
### Privacy Considerations
Access to the Human Services Directory should not require authentication, and the server should not maintain any records that could associate the consumer with the entities that were queried.
A conformant Human Services Directory SHALL NOT require a directory mobile application to send consumer identifying information in order to query content.
A directory mobile application SHALL NOT send consumer identifiable information when querying a Human Services Directory.
### Must Support
When querying the Human Service Resource Directory Profiles defined in this IG, Must Support on any profile data element SHALL be interpreted as follows:
Application Requirements
•	Application actors SHALL be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail.
•	Application actors SHOULD be capable of displaying the data elements for human use or storing the information for other purposes.
•	When querying the Human Service Resource Directory API, Application actors SHALL interpret missing Must Support data elements within resource instances as data not present.
•	Consumer App actors SHALL be able to process resource instances containing Must Support data elements asserting missing information.
### Client Detection of Updates Directory Content
Each profile in this guide requires that the lastUpdate timestamp be provided as part of the profile's data content. Clients that cache query results can track additions or modifications to directory content through queries that filter content using the _lastUpdated search parameter. Clients should periodically check that data cached from past queries has not been deleted by querying for the same elements by _id.
### General Security Considerations
NO CONTENT
##	Representing and Searching Provider Directory Data
The intent of this section is to provide examples of the canonical use of the profiles provided in this companion IG to help guide implementers in the consistent use of these profiles to enable 3rd party applications to search the data. The design is based on the following search types:
Search	Example	Focal Resource and Field	Qualifications of Search
General Search		HealthcareService.category, HealthcareService.type	Location
Organization by Name		Organization.name	Location
Others 			
The content in this section of the IG is based on the examples provided and on the patterns provided here.
Specific examples are referenced in the text below.
### Searching for active Organizations
Sample query to search for currently active Organizations (replace date in query with current date):
provide example query
To search for Organizations that will be active at a future time, change the date to a future date.

If no period is provided, then it is assumed the Organization is active with no expiration date.
### HealthcareService
The first type of search starts from HealthcareService.category and/or HealthcareService.type. Need to add language related to mapping local services to a standard taxonomy.
Human and Social Service Resource HealthcareServices are typically provided by a community-based organization and can be linked to a set of locations where each service is provided, (or identified as virtual services through an indicated set of virtual modalities we virtual services are within scope). The examples illustrate this with an organization that provides three distinct human and social services -- housing, nutrition, and employment -- across its locations. All community-based organizations should define and maintain an appropriate, up-to-date set of Human and Social HealthcareServices. The HealthcareService category and type fields represent the highest level of classification of services provided by a community-based organization.
Relevant examples:
Scenario	Example Instances

Cancer Clinic	CancerClinicService

Virtual Counseling Service	VirtualCounselService

Solo Family Practitioner 	HansSoloService


### Location
Location instances provide information about location where services are provided, including contact information, address, accessibility, hours of operation and contact, as well as position (longitude and latitude). Locations can also be used to represent regions using an associated or attached GeoJSON object.
Relevant examples:
Scenario	Example Instances
Hospital Location #1	HospLoc1

Hospital Location #2	HospLoc2

Location used as CoverageArea	StateOfCTLocation


### Organization
Organization instances provide information about a specific organization and organizational hierarchies, including organization name, specialty, type, address and contact information. 
Scenario	Example Instances
Clinic that is a member of a regional HIE	BurrClinic, ConnHIE, ConnHIEAffil


### Endpoints
An Endpoint instance provides the technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging.
Scenario	Example Instances
Payer Portal	AcmeOfCTPortalEndpoint


