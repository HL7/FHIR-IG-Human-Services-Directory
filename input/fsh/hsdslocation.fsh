Alias: $USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias: Accessibility = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility
Alias: $R4GeoJSONExtension = http://hl7.org/fhir/StructureDefinition/location-boundary-geojson
Alias: ContactPointAvailableTime  = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime
Alias: LocationStatus = http://hl7.org/fhir/location-status 
Alias: NewPatients = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/newpatients
Alias: Accessibility = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility
Alias: ViaIntermediary = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/via-intermediary

Profile: HSDLocation
Parent: $USCoreLocation
Id: hsds-Location
Title:    "HSDLocation"
Description: "The HSDLocation resource describes the physical place where community-based services are provided, practitioners are employed, organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* identifier.use = #official (exactly)
* meta.lastUpdated 1..1
* extension contains
    NewPatients named newpatients 0..0 and
    Accessibility named accessibility 0..* and
    $R4GeoJSONExtension named location-boundary-geojson 0..1
* extension[accessibility] ^short = "Accessibility"
* extension[location-boundary-geojson] ^short = "Associated Region (GeoJSON)"
* identifier.type MS
* identifier.value MS
* status 1..1 MS
* status = LocationStatus#active  (exactly) 
* alias 0..*
* description 0..1
* mode 0..0
* type 0..0
* telecom
* telecom.use = #work (exactly)
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..0 MS and
       ViaIntermediary named via-intermediary 0..0 MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* address.use = #work (exactly)
* position MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(HSDOrganization)
* partOf 0..0
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS

Mapping: HSDLocationToHSDS
Source: HSDLocation
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
Description: """This section describes the way HSDS version 2.0.1 elements are mapped from HSDS tables to the FHIR HSDLocation profile. The left hand column contains the FHIR HSDLocation element name; the right hand column contains the HSDS table.element and any implementation/transformation rules required to support the mapping.

The HSDS specification (v.2.0.1) served as the initial basis for requirements, and the mapping/alignment of HSDS data elements to profiles contained in the FHIR IG for Human Service Directories, STU1. HSDS Version 2.0.1 applies string datatypes to nearly all HSDS table 'id' fields/ data elements, including the id field associated with each HSDS [table] (e.g., organization.id [organization], location.id [location], service.id [service], phone.id [phone], etc.). In the next version of HSDS, v.3.0, each HSDS table.id field will be defined using the UUID data type.

FHIR Resource .ids  (and the .ids in their profiles) are defined using the FHIR id datatype, a string that supports "Any combination of upper- or lower-case ASCII letters ('A'..'Z', and 'a'..'z', numerals ('0'..'9'), '-' and '.', with a length limit of 64 characters. (This might be an integer, an un-prefixed OID, UUID or any other identifier pattern that meets these constraints.)". 

Because UUIDs provide uniqueness to data/resources when they are exchanged across multiple systems, it is recommended that implementers of the FHIR IG for Human Services Directories support UUIDs in all HSDS id fields that are mapped to FHIR .id data elements."""
*  meta -> "Note: The HSDS metadata table contains a record of the changes that have been made to the data in order to maintain provenance information."
// uncommented meta.lastUpdated below
* meta.lastUpdated -> "metadata.last_action_date Note: The date when data was changed. Since there may be more than one metadata record for each location, the latest max(last_action_date) needs to be used from metadata where location.id =  metadata.resource_id."
* text -> "No Source. May be excluded from the mapping. Note: This DomainResource.text is meant for textual summary of the resource."
* extension[newpatients] -> "No Source. Note: This is a GAP in HSDS. This extension indicates whether new patients are being accepted in general, or from a specific network."
* extension[accessibility] ->  "For ADA compliant disability options:     
    location.extension:accessibility.value[x] = HSDS  
            location.transportation 
    location.extension:accessibility.url = 'pubtrans'; 
For public transportation:     
      location.extension:accessibility.value[x]= 
             accessibility_for_disabilities.accessibility                   
       location.extension:accessibility.url = 'adacomp'.
Note: This FHIR extension describes accessibility options offered by the location. Based on the the Accessibility valuset defined for this extension i.e.  http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/AccessibilityVS, there are two different data sources in HSDS that may be mapped. However, the HSDS source for this is not coded data so the content in value may not be in sync with the code used as extension.url."
* extension[$R4GeoJSONExtension] -> "No Source. Note: This is a GAP in HSDS. This is a Plan-Net extension to represent the location boundary in GEOJson format as an Attachment data type."
* identifier -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.id -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.use -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.type -> "No Source. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.system -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.value -> "No Source. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.period -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.assigner -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* status -> "Fixed value = 'active' Note: HSDS location does not have a status but this is required in FHIR so fixed value is proposed to indicate that location  is active."
* name -> "location.name"
* alias -> "location.alternate_name"
* description -> "location.description While description is not unique in HSDS model, US Core limits description cardinality to 0..1"
* mode -> "No Source. This is a GAP in HSDS. In FHIR, mode ndicates whether a resource instance represents a specific location or a class of locations."
* type -> "No Source. Note: This is a GAP in HSDS. This is a Must Support as per Plan-Net profile but it is an optional element."
* telecom.extension -> "No Source. Phone extension is a GAP in HSDS."
* telecom.extension[contactpoint-availabletime] -> "No Source. Note: This is a GAP in HSDS. This FHIR extension is added by the Plan-Net profile and represents available hours for the telecom (e.g. customer service phone hours from 8AM-6PM M-F). There is no equivalent mapping to this data element in HSDS since the HSDS schedule table contains details of when a service or location is open and is not related to a phone line associated with a location."
* telecom.extension[via-intermediary] -> "No Source. Note: This is a GAP in HSDS. This FHIR extension added by the Plan-Net profile represents a reference to an alternative point of contact. HSDS does not have the source data to represent an 'intermediary' as that implies some sort of location relationship."
*  telecom.system -> "if phone.type = 'voice' then system = 'phone'  
if phone.type = 'cell' then system = 'phone' 
if phone.type = 'fax' then system = 'fax' 
if phone.type = 'pager' then system = 'pager' 
if phone.type = 'text' then system = 'sms' 
if phone.type = 'textphone' then system = 'sms' 
if phone.type = 'video' then system = 'other' 
Note: There are only phone numbers in HSDS for location telecom data so the type will not include 'email' or 'url'. Drawn from the ContactPointSystem value set [http://hl7.org/fhir/ValueSet/contact-point-system]"
*  telecom.value -> "phone.number Note: For phone, HSDS location table will be linked to the  phone table using location.id = phone.location_id. There are only phone numbers in HSDS for location telecom data so the value will not include any email or url records."
*  telecom.use -> "Fixed value  = 'work' Note: This is a GAP in HSDS but since it is for work related information, it is possible to set this to 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/R4/valueset-contact-point-use.html."
*  telecom.rank -> "No Source. May be excluded from the mapping. Note: This a GAP in HSDS. In FHIR, it is used to specify a preferred order in which to use a contact point. The parent Plan-Net profile indicates this is a Must Support element but is optional, So iit can be excluded since there is no source."
*  telecom.period -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, this data element captures the time period when the contact point was/is in use. But it can be excluded since there is no source and it is optional."
*  address -> "Note: In HSDS,two address  tables are used, one for postal_address, the other for physical_address. This linkage is based on  location.id = address.location_id. If there are multiple  addresses, only the latest one will be used to populate the FHIR address data since it allows only one address."
*  address.id -> "postal_address.id or physical_address_id 
Note: This data element may be ignored as having the id for the address record  isn't essential. If populated, it should be the id from one of the address tables that particular address  is referring to."
*  address.use -> "Fixed value  = 'work' Note: This is a GAP in HSDS but since it is for work related information, it is possible to set this to 'work' drawn from the AddressUse value set http://hl7.org/fhir/R4/valueset-address-use.html."
*  address.type -> "Fixed value  = 'postal' or 'physical'  Note: This is a GAP in HSDS but it can be inferred by which table is used as a source in the HSDS i.e. postal_address or physical_address respectively."
*  address.text -> "Concatenation of address_1, city, state_province, postal_code and country; all separated by comma (,) except dash (-) between state_province and postal_code. Note: The address data elements will be from postal_address or physical_address depending on which address is sourced. In FHIR, this element specifies the entire address as it should be displayed."
*  address.line -> "postal_address.address_1 or physical_address.address_1 Note: address.line in FHIR is an array (list) so address_1 is populated in the first position of the array. If address_2 is available (although deprecated in HSDS), it may be populated in the second position of the array."
*  address.city -> "postal_address.city or physical_address.city"
*  address.district -> "postal_address.region or physical_address.region"
*  address.state -> "postal_address.state_province_code or physical_address.state_province_code"
*  address.postalCode -> "postal_address.postal_code or physical_address.postal_code"
*  address.country -> "postal_address.country or physical_address.country"
*  address.period -> "No Source. May be excluded from the mapping. Note: This a GAP in HSDS. In FHIR, this data element represents the time period when the address was in use for the location."
*  physicalType -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. This element is bound to an example value set location-physical-type that defines a set of codes to indicate the physical form of the Location."
*  position -> "The absolute geographic location in FHIR"
*  position.id -> "No Source. May be excluded from the mapping. Note: This data element may be ignored as having the id for the position record  is not essential and not available in HSDS."
*  position.longitude -> "location.longitude Note: X coordinate of location expressed in decimal degrees in WGS84 datum."
*  position.latitude -> "location.latitude Note: Y coordinate of location expressed in decimal degrees in WGS84 datum."
*  position.altitude -> "GAP in HSDS, optional element in FHIR."
*  managingOrganization -> "location.organization.id"
*  partOf -> "No Source. Note: This a GAP in HSDS. There is no concept of location hierarchy in HSDS." 
*  hoursOfOperation -> "Note: This structure identifies the days/times during a week this location is usually open. Linkage to schedule is from location.id = schedule.location_id."
*  hoursOfOperation.id -> "schedule.id Note: This data element may be ignored as having the id for the schedule record  isn't essential."
*  hoursOfOperation.daysOfWeek	-> "schedule.byday Note: This is a comma-separated value of days of the week. e.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is last Friday."
*  hoursOfOperation.allDay -> "No Source. Note: This is a GAP in HSDS. May be derived from other HSDS data elements but may not be an accurate representation."
*  hoursOfOperation.openingTime	-> "schedule.opens_at Note: This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)"
*  hoursOfOperation.closingTime	-> "schedule.closes_at Note: This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)"
*  availabilityExceptions -> "No Source. Note: This is a GAP in HSDS. This is a Must Support but optional element in the base Plan-Net profile."
*  endpoint -> "No Source. Note: This is for the technical implementation of web services for the location and it is not for source-specific business data. It is marked as Must Support though optional in the Plan-Net profile. At this point, no  location-specific web services have been identified so it may be ignored."