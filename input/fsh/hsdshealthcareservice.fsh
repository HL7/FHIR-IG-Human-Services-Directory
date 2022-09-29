Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService

Profile: HSDSHealthcareService
Parent: PLANNETHealthcareService
Id: hsds-HealthcareService
Title:    "HSDSHealthcareService"
Description: "The HSDSHealthcareService resource describes the social and human services offered by Community-Based Organizations (CBO) at a given location. This resource may be used to encompass a variety of human and social care services that assist patients and clients with unmet social needs. Examples include food, housing/shelter, income & employment, public transportation, public education, legal services, disability and aging and mental and physical health."

* extension[newpatients] 0..0 
* extension[delivery-method] 0..0 
* language 0..0 
* text 0..0 
* active = true
* specialty 0..0 
* identifier.use.value = "official"
* identifier.system 0..0 
* identifier.value 0..0 
* identifier.period 0..0  
* telecom.use.value = "work" 
* telecom.rank 0..0 
* telecom.period 0..0 
* eligibility 0..0 


Mapping: HSDSHealthcareServiceToHSDS
Source: HSDSHealthcareService
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
Description: "This section describes the way HSDS version 2.0.1 elements are mapped from HSDS tables to the FHIR HealthcareService profile. The left hand column represents the FHIR HealthcareService element name, while the right column contains the HSDS table.element name followed by the element name's description in parenthesis. Comments related to the mapping may follow the HSDS element description."
* id  -> "	service.id	(Each service must have a unique identifier.)	"
* meta  -> "	metadata	(The metadata table contains a record of the changes that have been made to the data in order to maintain provenance information.) "
* meta.id  -> "	metadata.resource_id	(Each service, program. location, address, or contact will have a unique identifier.)	"
// * Slices for extension  -> "	GAP in HSDS	"
* meta.versionId  -> "	GAP in HSDS		"
* meta.lastUpdated  -> "	metadata.last_action_date	(The date when directory data was last changed.) Since there may be more than one metadata record for each service, we need use max(last_action_date) from HSDS metadata where (FHIR) HealthcareService.id = (HSDS) metadata.resource_id. 	"
// * source  -> "	GAP in HSDS		"
// * profile  -> "	GAP in HSDS		"
// * security  -> "	GAP in HSDS		"
// * tag  -> "	GAP in HSDS		"
// * implicitRules  -> "	GAP in HSDS		"
* language  -> "	GAP in HSDS. The FHIR Resource.language element is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute). HSDS language table contains details of the languages that are spoken at locations or services.	This element is constrained out of te profile.	"
* text  -> " GAP in HSDS.	FHIR HealthcareService.text is datatype 'Narrative' so the HSDS service.description field is not correctly mapped to this FHIR element. This element is constrained out of the profile. "
// * Slices for extension  -> "	 Do we need any new extensions? 	"
* extension[newpatients]  -> "GAP in HSDS. This existing extension indicates whether new patients are being accepted in general, or from a specific network. This extension provides needed flexibility for specifying whether a provider accepts new patients by location and network. Currently constrained out of the profile unless it's determined to be useful. "  
* extension[delivery-method]  -> "	Although this is a GAP in HSDS, it can be added as an attribute to the HSDS service_at_location table.  The HSDS location and service_at_location tables capture details about services and the location table indicates that (The location table provides details of the locations where organizations operate. Locations may be virtual, and one organization may have many locations.) Not sure whether the type (virtual vs physical) is found in service_at_location.description or location.description. Currently this extension has also been constrained out of the profile.  "
// * modifierExtension  -> "	GAP in HSDS.	In FHIR, this element may be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. 	"
* identifier  -> " There are no service identifiers in HSDS. In FHIR, this structure is used to define the business identifiers for each service. 	"
* identifier.id  -> "	During the initial map review with the OpenReferral Open Data Services Team, we learned that there is no concept of a business identifier associated with an HSDS service. HSDS service.name is not a business identifier nor is it unique. At the time of review, Open Data Services suggested to map service.id (Each service must have a unique identifier.) to FHIR HealthcareService.identifier.id to serve as the business identifier for the service. Check with OpenReferral with respect to their upgrade to version 3.0).  For the time being, this FHIR element can be ignored. "
// * Slices for extension  -> "	GAP in HSDS		"
* identifier.use  -> "	GAP in HSDS. This element defaults to official (The identifier considered to be most trusted for the identification of this item. Sometimes also known as primary and main. The determination of official is subjective and implementation guides often provide additional guidelines for use.), taken from the IdentifierUse value set (http://hl7.org/fhir/ValueSet/identifier-use). 	"
* identifier.type  -> "	GAP in HSDS. There is no source data in HSDS to map to this FHIR element, but this is a MUST SUPPORT FHIR element, to be drawn from the IdentifierType value set (http://hl7.org/fhir/ValueSet/identifier-type) which has an extensible binding. Further discussion required.    "
* identifier.system  -> "	GAP in HSDS. Constrained out of profile.	 "
* identifier.value  -> "	GAP in HSDS. Constrained out of profile.	"
* identifier.period  -> "	GAP in HSDS. Constrained out of profile. Most of the source  systems will not have date ranges for telecom. 	 "
* identifier.assigner  -> "	organization.id	(The identifier of the organization that provides this service.) This mapping requires verification as to whether it's needed/correct, or is this a GAP in HSDS.	"
* active  -> "	service.status (The current status of the service.) HSDS service.status is free text and in general, refers to the service being 'active', 'inactive', and (logically) deleted. However, it has been used to carry additional information like 'needs appointment' so the HSDS data requires data cleansing and transformation since HealthcareService.active is a boolean data type. More details have to be specified since FHIR HealthcareService.active is bolean (true/false). If service.status = 'active' then FHIR HealthcareService.active = true; else false. "
* providedBy  -> " This is a FHIR reference data element so requires populating three sub-elements as follows. Reference.reference = service.organization_id; referrence.type = 'Organization'; Reference.display = organization.name    "
* category  -> "	taxonomy_term.parent_id	(If this is a child term in a hierarchical taxonomy, give the identifier of the parent category. For top-level categories, this should be left blank.)	As a temporary placeholder, we will bind this element to resuse the temporary codes value set defined in the SDOH Clinical Care IG, http://hl7.org/fhir/us/sdoh-clinicalcare/ValueSet/SDOHCC-ValueSetSDOHCategory although this vs is drawn from a temp code system that includes additional concepts more related to documenting SDOH data in a patient's electronic meial record. The original idea was to map this profile element to the top level 211LA concept. Implementer comments: Need more details on what criteria to query service_attribute. "
* type  -> "	service_attribute.taxonomy_term_id	(The identifier of this taxonomy term from the taxonomy table.) We will create a new value set that is a subset of existing types and create additional new values if needed - http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/HealthcareServiceTypeVS. Implementer comments: Need more details on what criteria to query service_attribute 	"
* specialty  -> "	As it is unclear as to how NUCC specialty codes associated with community-based organization practitioner roles could be used to associate with human and social services in the directory that will be tied to a standard taxonomy such as 211LA or OpenEligibility's Human Services and Human Situations concepts. Should discuss with the Gravity project in more detail. In the meantime, this element has been constrained from this profile.	"
* location  -> "	service_at_location.location_id	(The identifier of the location where this service operates.) This element requires separately populating three subelements as follows (note that there may be more than one locations): Reference.reference = service_at_location.location_id; Referrence.type = 'Location'; Reference.display = location.name 	"
* name  -> "	service.name	(The official or public name of the service.)	"
* comment  -> "	service_at_location.description	(Any additional information that should be displayed to users about the service at this specific location.)	"
* extraDetails  -> "	funding.source	(A free text description of the source of funds for this organization or service.) I used the extra details field to map from HSDS funding and payment_accepted tables. This FHIR element is a markdown data type used to capture additional details about a service that doesn't map to other existing FHIR elements. Need to figure out how to make a reference to Organization to represent funding source for an organization. Implementer comments: Since the data element name is not obvious about what is stored, it will be good to add this as name value pair, i.e., add a label before the value e.g. 'Funding Source:'. Note there may be multiple funding records for each service if HSDS does not specify funding source uniqueness for each organization+service combination. 	"
* photo  -> "	GAP in HSDS, but an optional element in FHIR. In FHIR, if there is a photo/symbol associated with a service in the social services directory, it may be included here to facilitate quick identification of the service in a list.	"
* telecom  -> " The telecom element structure is used to list the contacts related to this specific healthcare service.  HSDS service.email contains the (Email address for the service), but phone information associated with services is found in the HSDS phone table (contains details of the telephone numbers are used to contact organizations, services, and locations.) where phone.service_id = service.id. Additional contact information associated with HSDS services is in the HSDS contact table (contains details of the named contacts for services and organizations where contact.service_id = service.id. In the HSDS data format, if an individual is the contact for multiple services, their details may be duplicated multiple times in this table, each time with a new identifier, and with the rows containing different service ids. 	 "
* telecom.id  -> "	phone.service_id (The identifier of the service for which this is the phone number.) This .id for the cross-reference purposes and typically is not relevant for  .id  (ContactPoint in this case) when it is contained within a resource. It is generally best practice to avoid exposing iternal database id to external system.  It may be possible to populate using phone.service_id.		"
// * Slices for extension  -> "	GAP in HSDS		"
* telecom.extension[contactpoint-availabletime]  -> "	schedule.byday (iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday)	"
* telecom.extension[via-intermediary] -> "	HSDS doesn't appear to have source data that represents the intent for the via-intermediary extension, since that would be some sort of organizational relationship. HSDS contacts are appropriate to be part of PractitionerRole resource.  HSDS does not have that source and it is not required in Plan-net profile. This element will be constrained out of this profile following agreement on the mapping for contact information. 	"
* telecom.system  -> "	telecom.system = email when service.email is not null; telecom.system = phone when phone.service_id service.id; telecom.system =  url when service.url is not null. Drawn from the ContactPointSystem value set (http://hl7.org/fhir/ValueSet/contact-point-system	"
* telecom.value  -> "	 telecom.value = service.email when telecom.system = email; telecom.value = service.url when telecom.system = url; telecom.value = phone.service_id when telecom.system = phone. "
* telecom.use  -> "	GAP in HSDS, but is defaulted to value 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/ValueSet/contact-point-use "
* telecom.rank  -> "	GAP in HSDS. Constrained out of the profile.		"
* telecom.period  -> "	GAP in HSDS.  Most of the source  systems will not have date ranges for telecom. Constrained out of the profile.		"
* coverageArea  -> "	coverageArea is a reference of location resource so service_area cannot be directly used. Although generally not recommended, it is possible to use Reference.display since there is no other corresponding data element in FHIR to HSDS service area. Most appropriate mapping is coverageArea.display = service_area.service_area (The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.)	"
* serviceProvisionCode  -> "	GAP in HSDS. There is no HSDS source data to map to the equivalent of FHIR HealthcareService.serviceProvisionCode. That element is meant to indicate code for the service provision conditions such as 'free', 'disc' or 'cost'.  There is no FHIR elment in the HealthcareService profile to map HSDS service.fees (Details of any charges for service users to access this service.) so this data may require a new extension. "
* eligibility  -> "	GAP in HSDS.	Eligibility is not addressed in this release. The HSDS eligiblity table does not contain details except primary key id and service_id, not sufficient to capture eligiblity details. The HSDS required_document table data if used for any eligibility data will require a new FHIR extension. As the result, the eligibility fields will be constrained out of this profile. "
* eligibility.id  -> "	This element and its sub elements are constrained out of profile since the HSDS elibility table contains insufficient data to map and eligibility is out of scope for this release of the IG.	"
// * extension  -> "	GAP		"
// * eligibility.modifierExtension  -> "	GAP in HSDS		"
// * eligibility.code  -> "	required_document.service_id	(The identifier of the service for which this entry describes the required document.)	"
// * eligibility.comment  -> "	required_document.document	(The document required to apply for or receive the service. e.g. ‘Government-issued ID’, ‘EU Passport’.)	"
* program  -> "	Program[0].text = program.name (The name of the program.) This is list of codeableConcepts. Since HSDS does not have any code for program, only the display and text elements of codeableConcept have to be mapped.  	"
* characteristic  -> "	This is list of codeableConcepts but there are no codes in HSDS. The mapping have to be without codes as follows: characteristic[0].text = service.interpretation_services  (A description of any interpretation services available for accessing this service.)	"
* communication  -> "	This is list of codeableConcepts but there are no codes in HSDS. So the mapping have to be without codes as follows: communication[0].text = language.language	(Languages, other than English, in which the service is delivered. Languages are listed as ISO639-1 codes.) Based on HSDS updates, table.field name may change - from 9/1 Natl Dir minutes, fix to naming of tables where field and table name are the same.	"
* referralMethod  -> "	GAP in HSDS. This is a FHIR CodeableConcept used to identify the ways that a referral is communicated when referring to a specific HealthCareService resource. Codes drawn from an example valueset: http://terminology.hl7.org/CodeSystem/service-referral-method. The HSDS required_document table contains details of any documents that are required in order to access or use services and is the closest HSDS table/fields that could be mapped to the HealthcareService.referralMethod concept. 		"
* appointmentRequired  -> "	GAP in HSDS. This FHIR boolean could be set based on information that at times is captured in the service.status field (e.g., appointment needed). HSDS service.status needs to be transformed to HealthcareService.active (boolean)  when status = active; this HSDS element is also sometimes used to capture if an appointment is required to access this service (at this location).		"
* availableTime  -> " This FHIR backbone element represents the collection of times that the Service Site is available.	The HSDS schedule table (contains details of when a service or location is open. Entries are RFC 5545 RRULES.)	"
* availableTime.id  -> "	schedule.service_id	(The identifier of the service for which this is the regular schedule.) schedule.location_id (Contains the identifier of the location for which this is the regular schedule.)	"
* availableTime.extension  -> "	schedule.description	(Human readable description of the availability of the service.)	"
* availableTime.modifierExtension  -> "  We may want to create a new modifier extension - ScheduleValidDates to reflect schedule.valid_from & schedule.valid_to dates. 	"
* availableTime.daysOfWeek  -> "	schedule.byday	(iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday.)	"
* availableTime.allDay  -> "	GAP in HSDS		"
* availableTime.availableStartTime  -> "	schedule.opens_at	(The time when a service or location opens. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)	"
* availableTime.availableEndTime  -> "	schedule.closes_at (The time when a service or location closes. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)	"
* notAvailable  -> "	GAP in HSDS. In HSDS there isn't equivalent data that would map to this FHIR element.	"
// * id  -> "	GAP in HSDS		"
// * extension  -> "	GAP in HSDS.	The date from which the schedule information is valid.	"
// * modifierExtension  -> "	GAP in HSDS		"
// * description  -> "	GAP in HSDS		"
// * during  -> "	GAP in HSDS		"
* availabilityExceptions  -> "	GAP in HSDS. In FHIR, this is a description of availability exceptions, e.g., public holiday availability. Succinctly describes all possible exceptions to normal site availability as detailed in the availableTimes and notAvailableTimes elements.	"
* endpoint  -> "	GAP in HSDS. This is for technical implementation of web services for the organization and it is not for source specific businss data. It is marked as a MUST SUPPORT element in base Plan-Net profile but optional. At this point no specific organization specific web services identified so it may be ignored. 	 "