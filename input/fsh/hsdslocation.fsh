// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService
Alias: PLANNETLocation = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Location
Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization
Alias: Accessibility = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility
Alias: ContactPointAvailableTime  = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime

Profile: HSDSLocation
Parent: PLANNETLocation
Id: hsds-Location
Title:    "HSDSLocation"
Description: "HSDSLocation"

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
* extension[accessibility] ->  " This FHIR extension describes accessibility options offered by the organization or location. This is not where accessibility_for_disabilities.accessibility should be mapped. That table requires a new extension.  "
* extension[accessibility].id -> " location.id (Each location must have a unique identifier) This element is populated with the HSDS location.id to associate location.transporation with this extension. "
* extension[accessibility].value[x] -> "location.transportation (A description of the access to public or private transportation to and from the location.) "
// * extension[accessibility][0].id -> " accessibility_for_disabilities.id (Each entry must have a unique identifier.)  "
/* * extension[accessibility][1].id -> " accessibility_for_disabilities.location_id (The identifier of the location for which the entry describes the accessibility provision.)  " */
/* * extension[disabilityAccess][0].value[x] -> "	accessibility_for_disabilities.accessibility (Description of assistance or infrastructure that facilitate access to clients with disabilities.) Requires new extension and a transformation to CodeableConcept 	" */
// * extension[region] -> "see FSH mappings commented out to location-boundary-geojson "
// * extension[location-boundary-geojson] -> "see FSH mappings commented out location-boundary-geojson "
/* * extension[region]location-boundary-geojson.id -> " service_area.service.id (The identifier of the service for which this entry describes the service area.) " */
/* * extension[region]location-boundary-geojson.value[x] -> " service_area.service_area (The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.) " */
/* * location-boundary-geojson -> "		The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.	" */
/* * extension:region:location-boundary-geojson.id -> "	service_area.service.id	The identifier of the service for which this entry describes the service area	" */
/* * extension:region:location-boundary-geojson.value[x] -> "	service_area.service_area	The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.	" */
// * modifierExtension -> "GAP"
* identifier -> " In FHIR, this element represents the business identifiers associated with a Location. "
* identifier.id -> "	There are no business identifiers associated with locations in HSDS, so this is a GAP in HSDS.	"
// * Slices for extension -> "GAP"
* identifier.use -> "GAP in HSDS. In FHIR, this element represents a code to identify the purpose for this identifier if known. Use official from the IdentifierUse value set-http://hl7.org/fhir/ValueSet/identifier-use if any idenfiers are found. "
* identifier.type -> "GAP in HSDS. In FHIR this element binds to an extensible value set, Identifier Type Codes. New value(s) for community based organizations could be added if there's a need to search for location by type. "
// * identifier.system -> "GAP"
// * identifier.value -> "GAP"
// * identifier.period -> "GAP"
* identifier.assigner -> " location.organization_id (Each location entry should be linked to a single organization. This is the organization that is responsible for maintaining information about this location. The identifier of the organization should be given here. Details of the services the organization delivers at this location should be provided in the services_at_location table.) Handled by Reference(Organization) "
* status -> "	GAP in HSDS location table. This is a a Must Support element in the base FHIR profile (Plan-Net). HSDS locations will be assumed equivalent to the active status drawn from the required value set LocationStatus http://hl7.org/fhir/ValueSet/location-status.  	"
// * operationalStatus -> "GAP Not needed for Human Services Directory"
* name -> "	location.name	(The name of the location.)	"
* alias -> "	location.alternate_name	(An alternative name for the location.)	"
* description -> "	location.description	(A description of this location.)	"
* type -> "GAP in HSDS. The base Plan-Net profile indicates this is a Must Support but optional element.  "
* telecom -> " This FHIR structure contains contact details of the location. In HSDS contact table is mapped from location identifierd in service_at_location_id or location.organization_id. "
* telecom.extension -> " phone.description	(A description providing extra information about the phone service (e.g. any special arrangements for accessing, or details of availability at particular times.) "
* telecom.id -> "	phone.id	(Each entry must have a unique identifier.) This is for the purpose of cross-references and typically not relevant for .id  (ContactPoint in this case) when it is contained within a resource. It is generally best practice to avoid exposing iternal database id to external systems.  It may be possible to populate this somehow using phone table id. For further discussion with other implementers and the OpenReferral team.	"
// * Slices for extension -> " GAP "
* telecom.extension[contactpoint-availabletime] -> "	This extension represents the days and times a contact point is available. 	"
// * telecom.extension[contactpont-availabletime].id -> " schedule.id (Each entry must have a unique identifier.) "
/* * telecom.extension[contactpont-availabletime].value[x] -> " schedule.location_id (The identifier of the location for which this is the regular schedule.) via Reference(Location) " */
* telecom.extension[via-intermediary] -> " phone.service_at_location_id (The identifier of the ‘service at location’ table entry, when this phone number is specific to a service in a particular location.) Does this mapping make sense? Implementer comment: Not sure HSDS has the source data to represent FHIR via-intermediary (A reference to an alternative point of contact) if this implies some sort of organizational relationship. HSDS contacts might appropriately be part of PractitionerRole resource. This is a Must Support but optional element in the base Plan-Net profile, so if HSDS does not have the source data, this will be constrained to 0..0. "
* telecom.system -> "	Default value to phone drawn from the ContactPointSystem value set (http://hl7.org/fhir/ValueSet/contact-point-system). "
* telecom.value -> "	phone.number (The phone number.) Implementer comments: For Phone:  phone.number where type = voice and phone.location_id = location.id (use latest if multiple)	"
* telecom.use -> "GAP in HSDS. Default to value work drawn from the ContactPointUse value set (http://hl7.org/fhir/ValueSet/contact-point-use) "
* telecom.rank -> "GAP in HSDS and optional in base profile. "
* telecom.period -> "GAP in HSDS. This is not a required or Must Supported element in the base profile. Most source systems will not have date ranges for telecom. "
* address -> " In HSDS two tables are used for addresses associated with locations, one for postal_address, the other for physical_address. In a future HSDS update, these tables will be collapsed, assumably along with a new type field to distinguish the type of address, but the following elements reflect mapping to both tables.   "
* address.id -> "	physical_address.id (Each physical address must have a unique identifier.)  It may be possible to populate the ids from physical_address and postal_address but generally better avoid exposing internal ids (just resource level ids may be exception just to link back to the source system). "
// * Slices for extension -> "GAP"
* address.use -> " GAP in HSDS. Default to value work drawn from the ContactPointUse value set (http://hl7.org/fhir/ValueSet/contact-point-use). "
* address.type -> " Populate as 'physical' or 'postal' depending on which table address comes from (HSDS physical_address, postal_address).  Once HSDS is updated to collapse the separate tables used for postal versus physical address, a new HSDS address_type element will map to this FHIR element that distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). "
* address.text -> " Concatentation of the appropriate HSDS address elements (all or some of the following - HSDS postal/physical address_1, city, region, state_province, postal_code, country) depending on whether the displayed address should be the postal versus physical address. In FHIR, this element specifies the entire address as it should be displayed e.g. on a postal label. This may be provided instead of or as well as the specific parts."
* address.line -> "	physical_address.address_1, postal_address.address_1 (The first line(s) of the address, including office, building number and street.)	"
* address.city -> "	physical_address.city, postal_address.city (The city in which the address is located.)	"
* address.district -> "	postal_address.location_region, physical_address.location_region (The region in which the address is located (optional).)	"
* address.state -> "	physical_address.state_province,postal_address.state_province (The state in which the address is located.) 	"
* address.postalCode -> "	postal_address.postal_code, physical_address.postal_code (The postal code for the address.) "
* address.country -> "	postal_address.country, physical_address.country (The country in which the address is located. This should be given as an ISO 3361-1 country code (two letter abbreviation).)	"
* address.period -> "GAP in HSDS. This is not required or indicated as Must Support in the base Plan-Net profile. Most  source  systems will not have date ranges for address. "
* physicalType -> " GAP in HSDS. This element is bound to an example value set location-physical-type that defines a set of codes to indicate the physical form of the Location. Not found to be relevant to HSDS during initial mapping with Open Data Services. "
* position -> " The absolute geographic location in FHIR "
* position.id -> " Location id should not be populated for geo coordinates. 		"
// * position.extension -> "GAP"
// * position.modifierExtension -> "GAP"
* position.longitude -> "	location.longitude	(X coordinate of location expressed in decimal degrees in WGS84 datum.)	"
* position.latitude -> "	location.latitude	(Y coordinate of location expressed in decimal degrees in WGS84 datum.)	"
// * position.altitude -> "	GAP in HSDS	"
* managingOrganization -> "	location.organization_id (Each location entry should be linked to a single organization.) This is the organization that is responsible for maintaining information about this location. The identifier of the organization should be given here. Details of the services the organization delivers at this location should be provided in the services_at_location table. This element is of data type Reference. This requires populating three subelements as follows. Reference.reference =  location.organization_id reference.type = 'Organization' reference.display = organization.name "
* partOf -> "	This is Must Support but optional element in the base Plan-Net profile. But this is a GAP in HSDS. " 
* hoursOfOperation -> "This structure identifies the days/times during a week this location is usually open. "
* hoursOfOperation.id -> "	schedule.location_id	(The identifier of the location for which this is the regular schedule.)	"
* extension -> "GAP"
// * modifierExtension -> "GAP"
* hoursOfOperation.daysOfWeek	-> " schedule.byday (iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday) "
* hoursOfOperation.allDay	-> "GAP in HSDS. Could be calculated from other HSDS fields if required. "
* hoursOfOperation.openingTime	-> "	Schedule.opens_at	(The time when a service or location opens. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.))	"
/* * closingTime	-> "	Schedule.closes_at	(The time when a service or location closes. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.))	" */
* availabilityExceptions	-> "This is a Must Support but optional element in the base Plan-Net profilebut is a GAP in HSDS.    "
* endpoint	-> "GAP"