Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService
Alias: HumanServiceCategoryVS = http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCategoryVS

Profile: HSDSHealthcareService
Parent: PLANNETHealthcareService
Id: hsds-HealthcareService
Title:    "HSDSHealthcareService"
Description: "The HSDSHealthcareService resource describes the social and human services offered by Community-Based Organizations (CBO) at a given location. This resource may be used to encompass a variety of human and social care service interventions that assist patients and clients with unmet social needs. Examples include food, housing/shelter, income & employment, public transportation, public education, legal services, disability and aging and mental and physical health."

// * extension[newpatients] 0..0 
// * extension[delivery-method] 0..0 
// * language 0..0 
// * text 0..0 
* active = true
// * specialty 0..0 
* identifier.use.value = "official"
// * identifier.system 0..0 
// * identifier.value 0..0 
// * identifier.period 0..0  
* telecom.use.value = "work" 
* telecom.rank 0..0 
* telecom.period 0..0 
// * eligibility 0..0 
// * category.coding = http://211taxonomy.org
// * category.coding.system = http://211taxonomy.org
// * category.coding.code = http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCategoryVS
* category from HumanServiceCategoryVS (extensible)
* type from HumanServiceTypeVS (extensible)


Mapping: HSDSHealthcareServiceToHSDS
Source: HSDSHealthcareService
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
Description: "This section describes the way HSDS version 2.0.1 elements are mapped from HSDS tables to the FHIR HealthcareService profile. The left hand column represents the FHIR HealthcareService element name, while the right column contains the HSDS table.element name followed by the element name's description in parenthesis. Comments related to the mapping may follow the HSDS element description."
* id  -> "service.id	(Each service must have a unique identifier.)"
* meta  -> "metadata	(The metadata table contains a record of the changes that have been made to the data in order to maintain provenance information.)"
* meta.lastUpdated  -> "metadata.last_action_date	(The date when directory data was last changed.) Since there may be more than one metadata record for each service, we need use max(last_action_date) from HSDS metadata where (FHIR) HealthcareService.id = (HSDS) metadata.resource_id."
* extension[newpatients]  -> "GAP in HSDS. This extension is used to indicate if new patients are being accepted in general, or from a specific network. This extension provides needed flexibility for specifying whether a provider accepts new patients by location and network. This is a Must Support, but optional Plan-Net element. Unless there is a new source for this data in HSDS 3.0, this extension will be ignored."  
* extension[delivery-method]  -> "Although this is a GAP in HSDS, a new attribute field could be added to the HSDS service_at_location (or service_attribute via taxonomy since the delivery method could also be added as part of taxonomy) to reflect this concept. The HSDS location table provides details of the locations where organizations operate. Locations may be virtual, and one organization may have many locations. Unclear whether the type of service delivery (virtual vs physical) is found in service_at_location.description or location.description. While this is a Must Support element in the parent Plan-Net profile, it is optional and therefore, will be ignored."
* identifier  -> "There is no concept of a business identifier associated with HSDS services. HSDS service.name is not a business identifier, nor is it unique.  For now, this FHIR element can be ignored for the purpose of this IG."
* identifier.use  -> "GAP in HSDS. In FHIR, this element represents a code to identify the purpose for this identifier if known. HealthcareService.identifier.use = 'official' if any identifiers are found drawn from the value set IdentifierUse [http://hl7.org/fhir/ValueSet/identifier-use]."
* identifier.type  -> "GAP in HSDS. HealthcareService.type represents the coded type of a business identifer that can be used to determine which identifer to use for a specific purpose. This is an extensible value set so we could consider adding a new code to represent the type of identifier used for social care services.  One possibility for associating a business identifier with a human service is if there is a known code, such as LOINC or CPT, but currently standardized codes are not generally available for Human Services."
* identifier.system  -> "GAP in HSDS."
* identifier.value  -> "GAP in HSDS."
* identifier.period  -> "GAP in HSDS. Most source systems will not have date ranges associated with telecom."
* identifier.assigner  -> "GAP in HSDS."
* active  -> "If HSDS service.status = 'active' then FHIR HealthcareService.active = 'true', else HealthcareService.active = 'false'. Because HSDS service.status is string data type and generally contains values 'active' and 'inactive', the field has also been used to convey additional information like 'needs appointment'."
* providedBy  -> "This is a FHIR reference data element so requires populating three sub-elements as follows. Reference.reference = service.organization_id; reference.type = 'Organization'; Reference.display = organization.name."
* category  -> "taxonomy_term.parent_id (If this is a child term in a hierarchical taxonomy, give the identifier of the parent category. For top-level categories, this should be left blank.) As a temporary placeholder, we will bind this element to a new preferred and extensible value set, HumanServiceCategoryVS [http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCategoryVS], with enumerations drawn from the open-source Open Eligibliity taxonomy [https://github.com/auntbertha/openeligibility/blob/master/taxonomy]. When an agreement between HL7 and 211 Taxonomy is reached, this value set could be replaced by one based on the 211Taxonomy code system."
* type  -> "service_attribute.taxonomy_term_id (The identifier of this taxonomy term from the taxonomy table.) As a temporary placeholder, we will bind this element to a new preferred and extensible value set, HumanServiceTypeVS [http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceTypeVS], with enumerations drawn from the open-source Open Eligibliity taxonomy [https://github.com/auntbertha/openeligibility/blob/master/taxonomy]. When an agreement between HL7 and 211 Taxonomy is reached, this value set could be replaced by one based on the 211Taxonomy code system."
* specialty  -> "FHIR HealthcareService.specialty is a Plan-Net MUST SUPPORT but optional element in the profile. Although this element will be ignored for the time being until search by human services specialty using the NUCC code system is found useful, this element wil be bound to a subset of the NUCC provider taxonomy file, the NonIndividualSpecialtiesVS [http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/NonIndividualSpecialtiesVS] Required binding. Due to the required binding, mapping to HSDS service_attribute.taxonomy_term_id (The identifier of this taxonomy term from the taxonomy table) for the purpose of searching by specialty based on indexing of the human services taxonomy used is not appropriate but should be considered."
* location  -> "service_at_location.location_id	(The identifier of the location where this service operates.) This element requires populating three sub-elements as follows (note that there may be more than one location): Reference.reference = service_at_location.location_id; Reference.type = 'Location'; Reference.display = location.name"
* name  -> "service.name	(The official or public name of the service.)"
* comment  -> "Mapping HealthcareService.comment to service_at_location.description is not appropriate because comment is specific to a HealthcareService provided at given location. There is a one to many relationship between HSDS service and location, so comment (0..1) does not accommodate such a mapping. We will need to make a recommendation on how to handle multiple locations. For the time being, this is noted as a GAP in HSDS."
* extraDetails  -> "funding.source (A free text description of the source of funds for this organization or service.) The data element name HelathcareService.extraDetails is not obvious about its content, it's advised to add map this as a name value pair,  i.e., add a label  before the value e.g., 'Funding Source '. Also note there may be multiple funding records for each service if HSDS does not specify unique funding sources for each combination of organization + service. Still outstanding is where to map HSDS payment_accepted.payment where payment_accepted.service_id = HealthcareService.id."
* photo  -> "GAP in HSDS, but an optional element in FHIR. In FHIR, if there is a photo/symbol associated with a service in the social services directory, it may be included here to facilitate quick identification of the service in a list."
* telecom  -> "The HSDS contact table contains details of the named contacts for services and organizations, but not their phone contact. The contact table also contains the email address of the contact person but there is also email on service table itself. Email and URL can be mapped from HSDS service table and phone number mapped from HSDS phone table linked to service."
* telecom.id  -> "phone.service_id (The identifier of the service for which this is the phone number.) This .id for the cross-reference purposes and typically is not relevant for  .id  (ContactPoint in this case) when it is contained within a resource. It is generally best practice to avoid exposing iternal database id to external system.  It may be possible to populate using phone.service_id."
* telecom.extension[contactpoint-availabletime]  -> "This extension represents the days and times a contact point is available (uses the ContactPoint datatype). Currently mapping to this field is described as follows: schedule.byday (iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday). However, currently there is no equivalent mapping frmo HSDS to HealthcareService.telecom.extension:contactpoint-availabletime since the HSDS schedule table contains details of when a service or location is open, and is not (directly) associated with a Healthcareservice. Implementation Comment: HSDS Schedule could be mapped to HealthcareService.availableTime as well as FHIR Schedule Resources. It's not appropriate to map HSDS service + location level schedule data to HealthcareService.telecom extension since they are two different attribures. Since this is a Must Support, though optional element in the Plan-net profile, this element can be ignored."
* telecom.extension[via-intermediary] -> "HSDS doesn't appear to have source data that represents the intent for the via-intermediary extension, since that would be some sort of organizational relationship. HSDS contacts are appropriate to be part of PractitionerRole resource. HSDS does not have that source and it is not required in Plan-net profile. This element can be ignored once mapping to HSDS contact & phone information has been mapped accurately."
* telecom.system  -> "telecom.system = email when service.email is not null; telecom.system = phone when phone.service_id service.id; telecom.system = url when service.url is not null. Drawn from the ContactPointSystem value set [http://hl7.org/fhir/ValueSet/contact-point-system]"
* telecom.value  -> "When telecom.system = email, telecom.value = service.email; When telecom.system = url, telecom.value = service.url; When telecom.system = phone, telecom.value = phone.number concatenated with phone.extension."
* telecom.use  -> "GAP in HSDS, but is defaulted to value 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/ValueSet/contact-point-use"
* telecom.rank  -> "GAP in HSDS but an optional FHIR element so will be ignored."
* telecom.period  -> "GAP in HSDS.  Source systems will generally not have date ranges for telecom."
* coverageArea  -> "service_area.service_area (The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.) FHIR HealthcareService.coverageArea is a reference of location resource so service_area cannot be directly used. Although generally not recommended, it is possible to use Reference.display since there is no other corresponding data element in FHIR to HSDS service area. Most appropriate mapping is coverageArea.display = service_area.service_area (The geographic area where a service is available. This is a free-text description, and so may be precise or indefinite as necessary.)"
* serviceProvisionCode  -> "GAP in HSDS. There is no HSDS source data to map to the equivalent of FHIR HealthcareService.serviceProvisionCode. That element is the code describing healthcare service provision conditions such as 'free', 'disc' or 'cost'. There is no FHIR HealthcareService element in the profile that maps to HSDS service.fees (Details of any charges for service users to access this service). FHIR serviceProvisionCode is not meant to store the actual fees or charges for a service. HSDS service.fees may require a new extension."
* eligibility  -> "GAP in HSDS. Eligibility is currently out of scope for this release of the IG as Eligibility is not addressed by the HSDS eligibility table (insufficient details to capture eligibility details as only a primary key (eligibility.id) and eligibility.service_id are included in the table.)"
* eligibility.id  -> "This element and its sub elements are ignored in the profile since the HSDS elibility table contains insufficient data to map to FHIR."
* eligibility.code  -> "GAP in HSDS"
* eligibility.comment  -> "GAP in HSDS"
* program  -> "Program[0].text = program.name (The name of the program.) This is list of codeableConcepts. Since HSDS does not have any code for program, only the display and text elements of codeableConcept have to be mapped."
* characteristic  -> "This FHIR element is indended to be bound to a list of codeableConcepts. Until such time as a number of valuesets are developed to represent HSDS data for potentially searchable fields, the map to HealthcareService.characteristic will be from HSDS service.interpretation_services as: characteristic[0].text = service.interpretation_services (A description of any interpretation services available for accessing this service.) Whether a different value set used to map from HSDS accessibility_for_disabilities table is a topic for the vocabulary discussion to take place before IG ballot content is frozen."
* communication  -> "communication[0].text = language.language. HealthcareService.communication is a list of codeableConcepts bound to the Common Languages value set [http://hl7.org/fhir/ValueSet/languages]."
* referralMethod  -> "GAP in HSDS. This is a FHIR CodeableConcept used to identify the ways that a referral is communicated when referring to a specific HealthCareService resource. Codes drawn from an example valueset: http://terminology.hl7.org/CodeSystem/service-referral-method. The HSDS required_document table contains details of any documents that are required in order to access or use services and is the closest HSDS table/fields that could be mapped to the HealthcareService.referralMethod concept."
* appointmentRequired  -> "GAP in HSDS, though during review with Open Data Services it was noted that service.status has been used to conveny whether an appointent is required for this service. Suggest follow up with Open Referral."
* availableTime  -> "This FHIR backbone element represents the collection of times that the Service Site is available.	The HSDS schedule table (contains details of when a service or location is open. Entries are RFC 5545 RRULES.)"
* availableTime.id  -> "schedule.service_id (The identifier of the service for which this is the regular schedule.) schedule.location_id (Contains the identifier of the location for which this is the regular schedule.)"
* availableTime.extension  -> "schedule.description	(Human readable description of the availability of the service.)"
* availableTime.modifierExtension  -> "Consider creating a new modifier extension - ScheduleValidDates to reflect schedule.valid_from & schedule.valid_to dates."
* availableTime.daysOfWeek  -> "schedule.byday	(iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday.)"
* availableTime.allDay  -> "GAP in HSDS"
* availableTime.availableStartTime  -> "schedule.opens_at	(The time when a service or location opens. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)"
* availableTime.availableEndTime  -> "schedule.closes_at (The time when a service or location closes. This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)"
* notAvailable  -> "GAP in HSDS. In HSDS there isn't equivalent data that would map to this FHIR element."
// * id  -> "GAP in HSDS"
// * extension  -> "GAP in HSDS. The date from which the schedule information is valid."
// * modifierExtension  -> "GAP in HSDS"
// * description  -> "GAP in HSDS"
// * during  -> "	GAP in HSDS"
* availabilityExceptions  -> "GAP in HSDS. In FHIR, this is a description of availability exceptions, e.g., public holiday availability. Succinctly describes all possible exceptions to normal site availability as detailed in the availableTimes and notAvailableTimes elements."
* endpoint  -> "GAP in HSDS. This is for technical implementation of web services for the organization and it is not for source specific businss data. It is marked as a MUST SUPPORT element in base Plan-Net profile but optional. At this point no specific organization specific web services identified so it may be ignored."