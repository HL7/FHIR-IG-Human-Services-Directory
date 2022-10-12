// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService
Alias: PLANNETLocation = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Location
Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization
Alias: Accessibility = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility
Alias: boundary-geojson = http://hl7.org/fhir/StructureDefinition/location-boundary-geojson
// Alias: location-boundary-geojson = http://hl7.org/fhir/StructureDefinition/location-boundary-geojson
Alias: ContactPointAvailableTime  = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime

Profile: HSDSLocation
Parent: PLANNETLocation
Id: hsds-Location
Title:    "HSDSLocation"
Description: "The HSDSLocation resource describes the physical place where community-based services are provided, practitioners are employed, organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."

Mapping: HSDSLocationToHSDS
Source: HSDSLocation
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
Description: "This section describes the way HSDS version 2.0.1 elements are mapped from HSDS tables to the FHIR Location profile. The left hand column represents the FHIR Location element name, while the right column contains the HSDS table.element name followed by the element name's description in parenthesis. Comments related to the mapping may follow the HSDS element description."
* id -> "	location.id	(Each location must have a unique identifier.)	"
* meta -> "	metadata (The metadata table contains a record of the changes that have been made to the data in order to maintain provenance information.)	"
// * meta.id -> " metadata.location_id (Each service, program. location, address, or contact will have a unique identifier.) "
// * Slices for extension -> "GAP"
// * meta.versionId -> "GAP"
* meta.lastUpdated -> "	metadata.last_action_date (The date when directory data was last changed.) Since there may be more than one metadata record for each location, we need use max(metadata.last_action_date) from HSDS metadata where (FHIR) Location.id = (HSDS) metadata.resource_id. "
/* * meta.source -> "GAP In FHIR, this is a uri that identifies the source system of the resource intended to provide minimal Provenance information to track/differentiate the source of information. " */
// * meta.profile -> "GAP"
// * meta.security -> "GAP"
// * meta.tag -> "GAP"
// * implicitRules -> "GAP" 
// * language -> "  GAP in HSDS. 	" 
// * extension -> " The following slices are used to describe aspects/characteristics associated with this location. "
* extension[newpatients] -> "	GAP in HSDS. This extension indicates whether new patients are being accepted in general, or from a specific network. The extension provides needed flexibility for specifying whether a provider accepts new patients by location and network.	"
* extension[accessibility] ->  " This extension descrbes accessibility options offered by a practitioner or at a location. Location.extension:accessibility.url defaults to 'pubtrans' where values in HSDS location.transportation get mapped to Location.extension:accessibilty.value[x]  (http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/AccessibilityVS). Location.extension:accessibility.url will default to 'adacomp' with values from accessibility_for_disabilities.accessibility plus values in  accessibility_for_disabilities.details. "
* extension[accessibility].id -> " Unmapped. Location.id already mapped to HSDS location.id. "
* extension[accessibility].url -> "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility" 
* extension[accessibility].value[x] -> "coding.system = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AccessibilityCS, coding.code 'adacomp', coding.display = accessibility_for_disabilities.accessibility where accessibility_for_disabilities.location_id is matches coding.code = 'pubtrabs', coding.display = location.transformation  "
* extension[location-boundary-geojson] -> "GAP in HSDS. This is the location-boundary-geojson extension (Attachment) but displays in the structure mapping table as extension(region). The Plan-Net profile displays the extension in the structure with the proper name 'location-boundary-geojson' indicates the slice name is Region, not location-boundary-geojson but points to the URL for the extension named boundary-geojson http://hl7.org/fhir/StructureDefinition/location-boundary-geojson. "
* extension[location-boundary-geojson].id -> " service_area.service.id (The identifier of the service for which this entry describes the service area.) " 
* extension[location-boundary-geojson].value[x] -> " service_area.service_area (The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.) " 
* identifier -> " In FHIR, this element represents the business identifiers associated with a Location.  "
* identifier.id -> "	There are no business identifiers associated with locations in HSDS.	"
* identifier.use -> "GAP in HSDS. This FHIR element represents a code to identify the purpose for this identifier if known. If any idenfiers are found in the source data, default to 'official' drawn from the IdentifierUse value set: http://hl7.org/fhir/ValueSet/identifier-use. "
* identifier.type -> "GAP in HSDS. FHIR element represents a coded type for an identifier that can be used to determine which identifier to use for a specific purpose, drawn from the extensible value set Identifier Type Codes:http://hl7.org/fhir/ValueSet/identifier-type. New value(s) for community based organizations could be added if there's a need to search for location by type. "
* status -> "	GAP in HSDS, but a Required element in the profile and drawn from the LocationStatus value set: http://hl7.org/fhir/ValueSet/location-status (required binding). HSDS locations will default to 'active'.	"
* name -> "	location.name	(The name of the location.)	"
* alias -> "	location.alternate_name	(An alternative name for the location.)	"
* description -> "	location.description	(A description of this location.)	"
* type -> "GAP in HSDS. This is a Must Support but optional element.  "
* telecom -> " This FHIR structure contains contact details of the location using the ContactPoint datatype (Details for all kinds of technology-mediated contact points for a person or organization, including telephone, email, etc.).   "
* telecom.id -> "This is for cross-reference purposes and typically not relevant for .id  (ContactPoint in this case) when it is contained within a resource. It is best practice to avoid exposing iternal database ids to external systems.  It may be possible to populate this somehow using HSDS phone.id, but note that phone.id isn't always relevant if telcom is URL or Email. "
* telecom.extension -> " phone.description	(A description providing extra information about the phone service (e.g. any special arrangements for accessing, or details of availability at particular times.) "
* telecom.extension[contactpoint-availabletime] -> "	This FHIR extension represents the days and times a contact point is available. There is no equivalent mapping to Location.telecom.extension:contactpoint-availabletime from HSDS as it's a GAP in the HSDS location table. This extension is meant to be the times when phone contact is available (say the phone lines open from 8AM-8PM). It may not necessarily be same as location open and close times. HSDS schedule table contains details when a service or location is open, but is not (directly) associated with a Location's phone and therefore not approriate to map to contactpoint-availabletime. This is MUST Support extension/element in the profile, but it is optional, so can be ignored. 	"
* telecom.extension[via-intermediary] -> " The 'via-intermediary' extension is a reference to an alternative point of contact (PractitionerRole, Organization, OrganizationAffiliation, or Location) for this organization. That definition implies some sort of organizational relationship that is not defined in HSDS. HSDS contacts may more appropriately map to the PractitionerRole resource. This extension is Must  Support, but optional in the base profile and can be ignored.  "
* telecom.system -> "	Default value to 'phone' drawn from the ContactPointSystem value set (http://hl7.org/fhir/ValueSet/contact-point-system) "
* telecom.value -> "	phone.number (The phone number.) Implementer comments: For Phone:  phone.number where type = voice and phone.location_id = location.id (use latest if multiple)	"
* telecom.use -> "GAP in HSDS. Default to value work drawn from the ContactPointUse value set (http://hl7.org/fhir/ValueSet/contact-point-use) "
* telecom.rank -> "GAP in HSDS and optional in base profile. "
* telecom.period -> "GAP in HSDS. This is not a Must Supported or required element in the base profile and will be ignored. Most source systems will not have date ranges for telecom. "
* address -> " In HSDS two tables are used for addresses associated with locations, one for postal_address, the other for physical_address. In a future HSDS update, these tables will be collapsed, assumably along with a new type field to distinguish the type of address, but the following elements reflect mapping to both tables.   "
* address.id -> "	It may be possible to populate the ids from physical_address and postal_address but generally better avoid exposing internal ids (resource level .id may be exception to link back to the source system data.). "
* address.use -> " GAP in HSDS. Default to value work drawn from the ContactPointUse value set (http://hl7.org/fhir/ValueSet/contact-point-use). "
* address.type -> " Populate as 'physical' or 'postal', drawn from the AddressType value set (http://hl7.org/fhir/ValueSet/address-type) depending on which table address comes from (HSDS physical_address, postal_address).  Once HSDS is updated to collapse the separate tables used for postal versus physical address, a new HSDS address_type element will map to this FHIR element that distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). "
* address.text -> " Concatentation of the appropriate HSDS address elements (all or some of the following - HSDS postal/physical address_1, city, region, state_province, postal_code, country) depending on whether the displayed address should be the postal versus physical address. In FHIR, this element specifies the entire address as it should be displayed e.g. on a postal label. This may be provided instead of or as well as the specific parts."
* address.line -> "	physical_address.address_1, postal_address.address_1 (The first line(s) of the address, including office, building number and street.)	"
* address.city -> "	physical_address.city, postal_address.city (The city in which the address is located.)	"
* address.district -> "	postal_address.location_region, physical_address.location_region (The region in which the address is located (optional).)	"
* address.state -> "	physical_address.state_province,postal_address.state_province (The state in which the address is located.) 	"
* address.postalCode -> "	postal_address.postal_code, physical_address.postal_code (The postal code for the address.) "
* address.country -> "	postal_address.country, physical_address.country (The country in which the address is located. This should be given as an ISO 3361-1 country code (two letter abbreviation).)	"
* address.period -> "GAP in HSDS. This is a Must Support or required element in the base Plan-Net profile. Most source systems will not have date ranges for address. "
* physicalType -> " GAP in HSDS. This element is bound to an example value set location-physical-type that defines a set of codes to indicate the physical form of the Location. Not found to be relevant to HSDS during initial mapping with Open Data Services. "
* position -> " The absolute geographic location in FHIR "
* position.longitude -> "	location.longitude (X coordinate of location expressed in decimal degrees in WGS84 datum.)	"
* position.latitude -> "	location.latitude	(Y coordinate of location expressed in decimal degrees in WGS84 datum.)	"
* position.altitude -> "	GAP in HSDS, optional element in FHIR.	"
* managingOrganization -> "	This element is of data type Reference and requires populating three subelements: Reference.reference =  location.organization_id reference.type = 'Organization' and reference.display = organization.name "
* partOf -> " GAP in HSDS. This is a Must Support but optional element in the base Plan-Net profile. " 
* hoursOfOperation -> "This structure identifies the days/times during a week this location is usually open. "
* hoursOfOperation.id -> "	schedule.location_id	(The identifier of the location for which this is the regular schedule.)	"
* hoursOfOperation.daysOfWeek	-> " schedule.byday (iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday) "
* hoursOfOperation.allDay	-> "GAP in HSDS. Could be calculated from other HSDS fields if required. "
* hoursOfOperation.openingTime	-> "	Schedule.opens_at	(The time when a service or location opens. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.))	"
/* * closingTime	-> "	Schedule.closes_at	(The time when a service or location closes. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.))	" */
* availabilityExceptions	-> " GAP in HSDS. This is a Must Support but optional element in the base Plan-Net profile.    "
* endpoint	-> " This is for technical implementation of web services for the location and it is not for source specific business data. It is marked as Must Support in the Plan-Net profile, but is optional. At this point, no specific location specific web services have been identified so it may be ignored. "