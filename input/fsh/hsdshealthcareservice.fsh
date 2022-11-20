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
* id  -> "service.id Note: Each service must have a unique identifier."
* meta  -> "metadata Note: The HSDS metadata table contains a record of the changes that have been made to the data in order to maintain provenance information."
* meta.lastUpdated  -> "metadata.last_action_date Note: The date when data was changed. Since there may be more than one metadata record for each location, the latest max(last_action_date) needs to be used from metadata where  service.id =  metadata.resource_id."
* extension[newpatients]  -> "No Source. Note: This is a GAP in HSDS. This extension indicates whether new patients are being accepted in general, or from a specific network."  
* extension[delivery-method]  -> "No Source. Note: This is a GAP in HSDS. While this is a Must Support element in the parent Plan-Net profile, it is optional and therefore, will be ignored."
* identifier  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with services in HSDS."
* identifier.id -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with services in HSDS."
* identifier.use  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.type  -> "No Source. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.system  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.value  -> "No Source. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.period  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* identifier.assigner  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. There are no business identifiers associated with locations in HSDS."
* active  -> "If HSDS service.status = 'active' then FHIR HealthcareService.active = 'true', else HealthcareService.active = 'false'. 
Note: HSDS service.status values are 'active', 'inactive', 'defunct' and 'temporarily closed'. All types other than 'active' are considered 'inactive' as per FHIR status."
* providedBy  -> "reference.reference = service.organization_id 
reference.type = 'Organization' 
reference.display = organization.name
Note: This element is of data type Reference that refers to the organization resource that provides this service."
* category  -> "category.coding.system = 'http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceCategoryCS'
category.coding.code = taxonomy_term.term
cateory.coding.display = taxonomy_term.description
category.text = taxonomy_term.description
Note: This mapping is to the service category level taxonomy term that will be a parent to service type level taxonomy term.  Linkage to category level term is from service.id = service_attribute_id, service_attribute.taxonomy_term_id = taxonomy_term.id, (child) taxonomy_term.parent.id = (parent) taxonomy_term.id . This assumes a two-level hierarchy of taxonomy terms. If there are more levels of hierarchy, then this will require traversing through the hierarchy until category level taxonomy_term parent is reached.  Service Category binding will be to specific concepts from LA211 taxonomy."
* type  -> "category.coding.system = 'http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceTypeCS'
category.coding.code = taxonomy_term.term
cateory.coding.display = taxonomy_term.description
category.text = taxonomy_term.description
Note: This mapping is to the service type level taxonomy term that will be directly linked to the service attribute.  Linkage to service type term is from service.id = service_attribute_id, service_attribute.taxonomy_term_id = taxonomy_term.id/.  Service Type binding will be to specific concepts from LA211 taxonomy."
* specialty  -> "No Source. 
Note: This is a GAP in HSDS. specialty is defined as Must Support in the Plan-Net profile but optional element. The Plan-Net profile defines as required binding to valueset that refers to the standardized NUCC taxonomy https://taxonomy.nucc.org/. However, this taxonomy does not contain most of the human services specific provider types (except 332U00000X: Home Delivered Meals). This mapping will be ignored for the time being until NUCC is extended to include human service providers and HSDS is modified to include the specialty of providers who can provide this service."
* location  -> "reference.reference = service_at_location.location_id
reference.type = 'Location' 
reference.display = location.name
Note: This element is of data type Reference that refers to the location resource where a given service can be provided. Linkage to location is service.id = service_at_location.service_id, service_at_location.location_id = location.id. There may be multiple locations for a given service. Since FHIR location is an array (list), each location will be populated in an individual position in the array."
* name  -> "service.name"
* comment  -> "No Source. Note: This is a GAP in HSDS. There is no comment or description for a service. There is a description in service_at_location but that will not be just specific to service but the combination of service and location."
* extraDetails  -> "Fixed value 'Funding Source:' appended with funding.source Note: Ths data element name extraDetails is not obvious about its content and this mapping to the funding source is not a direct mapping. Therefore it is advised to map this as a name-value pair, i.e., add a label before the value e.g., 'Funding Source '. Linkage to the funding source is service.organiztion_id = funding.organization_id and service.id = funding.service_id. If there are multiple funding sources for this combiation, they are concatenated."
* photo  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS."
* telecom  -> "Note: This FHIR structure contains contact details of the service using the ContactPoint datatype (Details for all kinds of technology-mediated contact points for a person or organization, including telephone, email, etc.)."
* telecom.id  -> "No Source. May be excluded from the mapping. Note: This data element may be ignored as having the id for the telecom record isn't essential and not always available in the HSDS (e.g. phone id is available but there is no separate id for email or website URL)."
* telecom.extension[contactpoint-availabletime]  -> "No Source.
Note: This is a GAP in HSDS. This FHIR extension is added by the Plan-Net profile and represents available hours for the telecom (e.g. customer service phone hours from 8AM-6PM M-F). There is no equivalent mapping to this data element in HSDS since the HSDS schedule table contains details of when a service or location is open and is not related to a phone line associated with a location."
* telecom.extension[via-intermediary] -> "No Source. Note: This is a GAP in HSDS. This FHIR extension added by the Plan-Net profile represents a reference to an alternative point of contact. HSDS does not have the source data to represent an 'intermediary' as that implies some sort of location relationship."
* telecom.system  -> "For Phone: 
    if phone.type = 'voice' then system = 'phone'  
    if phone.type = 'cell' then system = 'phone' 
    if phone.type = 'fax' then system = 'fax' 
    if phone.type = 'pager' then system = 'pager' 
    if phone.type = 'text' then system = 'sms' 
    if phone.type = 'textphone' then system = 'sms' 
    if phone.type = 'video' then system = 'other' 
For Email:
    Fixed value  = 'email' 
For Website URL:
    Fixed value  = 'url' 
Note: There are multiple sources in HSDS for the telecom in FHIR so the system will be populated  based on phone.type mapping or fixed value of 'email' or 'url' depending on the data populated. Drawn from the ContactPointSystem value set [http://hl7.org/fhir/ValueSet/contact-point-system]"
* telecom.value  -> "For Phone: 
    value = phone.number 
For Email,
    value = service.email
For Website URL: 
    value  = service.url
Note: For phone, HSDS service  linkage is to phone table using service.id = phone.service_id."
* telecom.use  -> "Fixed value  = 'work' Note: This is a GAP in HSDS but since it is for work-related information, it is possible to set this to 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/R4/valueset-contact-point-use.html."
* telecom.rank  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, it is used to specify a preferred order in which to use a contact point. The parent Plan-Net profile indicates this is a Must Support element but is optional, So it can be excluded since there is no source."
* telecom.period  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, this data element captures the time period when the contact point was/is in use. But it can be excluded since there is no source and it is optional."
* telecom.rank -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, it is used to specify a preferred order in which to use a contact point. The parent Plan-Net profile indicates this is a Must Support element but is optional, So it can be excluded since there is no source."
* telecom.period -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, this data element captures the time period when the contact point was/is in use. But it can be excluded since there is no source and it is optional."
* coverageArea  -> "reference.display = service_area.service_area Note: FHIR HealthcareService.coverageArea is a reference of location resource so service_area cannot be directly used. Although generally not recommended, this is mapped to Reference.display since there is no other corresponding data element in FHIR to HSDS service area.  If there are multiple service_area records for a given service, they are concatenated to make a single string."
* serviceProvisionCode  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. That element is the code describing healthcare service provision conditions such as 'free', 'disc' or 'cost'."
* eligibility  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. Eligibility is currently out of scope for this release of the IG as Eligibility is not addressed by the HSDS eligibility specification  (insufficient details to capture eligibility details as only a primary key (eligibility.id) and eligibility.service_id are included in the table.)"
* eligibility.id  -> "No Source. May be excluded from the mapping."
* eligibility.code  -> "No Source. May be excluded from the mapping."
* eligibility.comment  -> "No Source. May be excluded from the mapping."
* program  -> "program[0].text = program.name Note:  Since HSDS does not have any code for the program, only the text element of codeableConcept is mapped. Also, the program data element in FHIR is an array (list), so the program name from HSDS is populated in the first occurrence of the array."
* characteristic  -> "characteristic[0].text = service.interpretation_services 
Note: This is not an obvious mapping but interpretation services is one of the characteristics of the service provision. Also, this data element in FHIR is an array (list), so the interpretation services data from HSDS is populated in the first occurrence of the array."
* communication  -> "communication[0].text = language.language. Note: This data element in FHIR is an array (list), so the language from HSDS is populated in the first occurrence of the array."
* referralMethod  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS."
* appointmentRequired  -> "No Source. Note: This is a GAP in HSDS."
* availableTime  -> "Note: This structure identifies the days/times during a week this service may be provided. Linkage to the schedule is from service.id = schedule.service_id."
* availableTime.id  -> "schedule.id  Note: This data element may be ignored as having the id for the schedule record isn't essential."
* availableTime.extension  -> "extension[0].valueSting = schedule.description Note: This is not an obvious mapping but the extension is available to provide additional details. Since the extension is an array (list), the description will be populated in the first occurrence of the extension."
* availableTime.modifierExtension  -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS."
* availableTime.daysOfWeek  -> "schedule.byday Note: This is a comma-separated value of days of the week. e.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is last Friday."
* availableTime.allDay  -> "No Source. Note: This is a GAP in HSDS. May be derived from other HSDS data elements but may not be an accurate representation."
* availableTime.availableStartTime  -> "schedule.opens_at Note: This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)"
* availableTime.availableEndTime  -> "schedule.closes_at Note: This should use HH:MM format and should include timezone information, either adding the suffix ‘Z’ when the date is in UTC, or including an offset from UTC (e.g. 09:00-05:00 for 9am EST.)"
* notAvailable  -> "No Source. Note: This is a GAP in HSDS."
* availabilityExceptions  -> "No Source. Note: This is a GAP in HSDS. This is a Must Support but an optional element in the base Plan-Net profile."
* endpoint  -> "No Source. Note: This is for the technical implementation of web services for the healthcare service and it is not for source-specific business data. It is marked as Must Support though optional in the Plan-Net profile. At this point, no service- specific web services have been identified so it may be ignored."