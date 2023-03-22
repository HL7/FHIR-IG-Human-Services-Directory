Alias: TYPE = http://terminology.hl7.org/CodeSystem/v2-0203 
Alias: ORGTYPEVS =  http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/OrgTypeVS
Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization
Alias: Qualification = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/qualification
Alias: IRS = http://www.irs.gov

Profile: HSDSOrganization
Parent: PLANNETOrganization
Id: hsds-Organization
Title:    "HSDSOrganization"
Description: "The HSDSOrganization resource is a formal or informal grouping of people or organizations set up to assist people in coping with issues related to various social issues, including but not limited to: adequate housing, substance abuse, domestic conflict, mental health and/or personal/familial problems.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text."

* active = true
* type from OrgTypeVS (extensible)
* telecom.extension[via-intermediary] 0..0 MS
* address.use = TYPE#work (exactly)


Mapping: HSDSOrganizationToHSDS
Source: HSDSOrganization
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
Description: "This section describes the way HSDS version 2.0.1 elements are mapped from HSDS tables to the FHIR HSDSOrganization profile. The left hand column contains the FHIR HSDSOrganization element name; the right column contains the HSDS table.element and any implementation/transformation rules required to support the mapping."
* id  -> "organization.id Note: Each organization must have a unique system identifier in the source system."
* meta  -> "Note: The HSDS metadata table contains a record of the changes that have been made to the data in order to maintain provenance information."
* meta.id -> "metadata.id Note: This data element may be ignored as having the id for the date metadata isn't essential. If populated, it should be id corresponding to the latest action date for given organization as described below."
* meta.lastUpdated  -> "metadata.last_action_date Note: The date when data was changed. Since there may be more than one metadata record for each organization, the latest max(last_action_date) needs to be used from metadata where (FHIR) Organization.id = (HSDS) metadata.resource_id."
* language -> "No Source. May be excluded from the mapping. Note: This data element in FHIR is referring to language for the resource context and not the language for the communication for given service or location."
* text -> "No Source. May be excluded from the mapping. Note: This DomainResource.text is meant for textual summary of the resource so organization description is mapped to the org-description extension added by Plan-Net profile."
* extension[qualification]  -> "extension[qualification]:code.url = 'code' extension[qualification]:code.valueCodeableConcept.text = service.accreditations 
Note: This is a GAP in HSDS that can be resolved by having qualifications collected at the organization level. As a workaround, suggested mapping uses the unique set of accreditations from service and concatenated for the organization level as described below."
* extension[org-description]  -> "organization.description Note: This Plan-Net profile added this extension for organization description as opposed to using DomainResource.text data element which is meant for textual summary of the resource."
* identifier
* identifier.id  -> "No Source. May be excluded from the mapping. Note: This data element may be ignored as having the id for the identifier record  isn't essential and is not available in HSDS since the tax ID is directly on the organization table."
* identifier.use  -> "Fixed value = 'official' Note: Since the organization business identifier in HSDS is organization.tax id  which is used for official purpose,  this element is to be set with a fixed value 'official' drawn from the code system IdentifierUse http://hl7.org/fhir/identifier-use."
* identifier.type -> "Fixed value = 'TAX' Note: Since the organization business identifier in HSDS is organization.tax id  which is used for the tax,  this element is to be set with a fixed value 'TAX'  drawn from the IdentifierType code system – http://terminology.hl7.org/CodeSystem/v2-0203 [an HL7-defined code system of concepts specifying type of identifier]."
* identifier.system -> "Fixed value = 'urn:us:gov:irs' Note: Since the organization business identifier in HSDS is organization.tax id  which is issued by IRS,  this element is to be set with a fixed value with IRS URN."
* identifier.value  -> "organization.tax_id Note: This is the only business identifier in HSDS at this time."
* identifier.period  -> "organization.year_incorporated Note:  HSDS organization.year_incorporated may not always be the same as when the TAX ID was issued (especially if a company merged or split). Technically year_incorporated  is a GAP in FHIR and should be added as an extension. Also the effective date of the identifier (mapped to period here) is GAP in HSDS. But until both of those GAPs are addressed, the above mapping is proposed as a work around."
* identifier.assigner -> "Fixed value = 'www.irs.gov' Note: This is GAP in HSDS but it can be implicitly inferred. Since the organization business identifier in HSDS is organization.tax id  which is issued by IRS,  this element is to be set with a fixed value with IRS website link as a reference." 
* active  -> "Fixed value = 'true' Note: HSDS organization does not have a status but this is required in FHIR so fixed value is proposed to indicate that organization is active."
* type -> "Any code is allowed from the type.system = 'http://hl7.org/fhir/us/DaVinci-pdex-plan-net/ValueSet/OrgTypeVS'  Note: This is a GAP in HSDS but a required Must Support element in the Plan-Net profile." 
* name  -> "organization.name"
* alias  -> "organization.alternate_name Note: Since there is only one alternate name in HSDS but the alias is an array (list) in FHIR, this will map to the first occurrence of the array."
* telecom -> "Note: This FHIR structure contains contact details of the organization using the ContactPoint datatype (Details for all kinds of technology-mediated contact points for a person or organization, including telephone, email, etc.)."
* telecom.id -> "No Source. May be excluded from the mapping. Note: This data element may be ignored as having the id for the telecom record  isn't essential and not always available in the HSDS (e.g. phone id is available but there is no separate id for email or website URL)."
* telecom.extension[contactpoint-availabletime]  -> "No Source. Note: This is a GAP in HSDS. This FHIR extension is added by Plan-Net profile and represents available hours for the telecom (e.g. customer service phone hours from 8AM-6PM M-F). There is no equivalent mapping to this data element in  HSDS since the HSDS schedule table contains details of when a service or location is open, and is not a phone line associated with an organization."
* telecom.extension[via-intermediary]  -> "No Source. Note: This is GAP in HSDS. This FHIR extension added by Plan-Net profile represents a reference to an alternative point of contact. HSDS does not have the source data to represent 'intermediary' as that implies some sort of organizational relationship."
* telecom.system -> "For Phone: 
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
Note: There are multiple sources in HSDS for the telecom in FHIR so the system will be  populated  based on phone.type mapping or fixed value of 'email' or 'url' depending on the data populated. Drawn from the ContactPointSystem value set [http://hl7.org/fhir/ValueSet/contact-point-system]"  
* telecom.value  -> "For Phone: 
    value = phone.number 
For Email,
    value = organization.email
For Website URL: 
    value  = organization.url
Note: For phone, HSDS  organization linkage is to HSDS phone table using  organization.id = phone.organization_id."
* telecom.use -> "Fixed value  = 'work' Note: This is a GAP in HSDS but since it is for work related information, it is possible to set this to 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/R4/valueset-contact-point-use.html."
* telecom.rank -> "No Source. Note: This a GAP in HSDS. In FHIR, it is used to specify a preferred order in which to use a contact point. The parent Plan-Net profile indicates this is a Must Support element but is optional, So it can be excluded since there is no source."
* telecom.period -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, this data element captures the time period when the contact point was/is in use. But it can be excluded since there is no source and it is optional."
* address  -> "Note: HSDS does not have an address associated with the organization. So the Location table is used to capture address details associated with locations that are part of that organization. Two HSDS tables are used, one for postal_address, the other for physical_address. This linkage is based on  organization.id =   location.organization_id and location.id = address.location_id. If there are multiple locations and associated addresses, all of those can be included for organization level addresses since there is no indication to identify which location or address is primary to be used as organization address."
* address.id  -> "postal_address.id or physical_address_id Note: This data element may be ignored as having the id for the address record  isn't essential. If populated, it should be the id from one of the address tables that particular address  is referring to."
* address.extension[geolocation] -> "location.latitude Note: There is no location in HSDS at the organization level."
* address.use  -> "Fixed value  = 'work' Note: This is a GAP in HSDS but since it is for work related information, it is possible to set this to 'work' drawn from the AddressUse value set http://hl7.org/fhir/R4/valueset-address-use.html."
* address.type -> "Fixed value  = 'postal' or 'physical' Note: This is a GAP in HSDS but it can be inferred by which table is used as a source in the HSDS i.e. postal_address or physical_address respectively."
* address.text -> "Concatenation of address_1, city, state_province, postal_code and country; all separated by comma (,) except dash (-) between state_province and postal_code. Note: The address data elements will be from postal_address or physical_address depending on which address is sourced. In FHIR, this element specifies the entire address as it should be displayed."
* address.line  -> "postal_address.address_1 or 
physical_address.address_1 Note: address.line in FHIR is an array (list) so address_1 is populated in the first position of the array. If address_2 is available (although deprecated in HSDS), it may be populated in the second position of the array."
* address.city  -> "postal_address.city or physical_address.city"
* address.district  -> "postal_address.region or physical_address.region"
* address.state  -> "postal_address.state_province_code or physical_address.state_province_code"
* address.postalCode  -> "postal_address.postal_code or physical_address.postal_code"
* address.country  -> "postal_address.country or physical_address.country"
* address.period  -> "No Source. May be excluded from the mapping. Note: This a GAP in HSDS. In FHIR, this data element represents the time period when the address was in use for the organization."
* partOf  -> "No Source. Note: This a GAP in HSDS. There is no concept of organization hierarchy in HSDS."
* contact  -> "Note: contact Table The HSDS contact table contains details of the named contacts associated with the organization. This linkage is based on FHIR organization.id = HSDS contact.organization_id. If there are multiple contacts, all of those can be included for organization level contacts in FHIR since there is no indication to identify which contact is primary." 
* contact.id -> "contact.id  Note: This data element may be ignored as having the id for the contact record  isn't essential."
* contact.extension  -> "contact.department Note: This is a GAP in FHIR. Proposed publishing a new StructureDefinition for this extension, e.g., http://hl7.org/fhir/us/FHIR-IG-Human-Services-Directory/StructureDefinition/contact-department"
* contact.purpose  -> "No Source. May be excluded from the mapping. Note: This is a GAP In HSDS. In FHIR, this element is used to indicate the purpose of which the contact can be reached."
* contact.name  -> "contact.name"
* contact.telecom
* contact.telecom.id -> "No Source. May be excluded from the mapping. Note: This data element may be ignored as having the id for the telecom record  isn't essential and not always available in the HSDS (e.g. phone id is available but there is no separate id for email)."
* contact.telecom.extension[contactpoint-availabletime] -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. This FHIR extension is added by Plan-Net profile and represents available hours for the telecom (e.g. customer service phone hours from 8AM-6PM M-F). There is no equivalent mapping to this data element in  HSDS since the HSDS schedule table contains details of when a service or location is open, and is not a phone line associated with a contact."
* contact.telecom.extension[via-intermediary] -> "No Source. May be excluded from the mapping. Note: This is GAP in HSDS. This FHIR extension added by Plan-Net profile represents a reference to an alternative point of contact. HSDS does not have the source data to represent 'intermediary' as that implies some sort of contact relationship."
* contact.telecom.system -> "For Phone: 
    if phone.type = 'voice' then system = 'phone'  
    if phone.type = 'cell' then system = 'phone' 
    if phone.type = 'fax' then system = 'fax' 
    if phone.type = 'pager' then system = 'pager' 
    if phone.type = 'text' then system = 'sms' 
    if phone.type = 'textphone' then system = 'sms' 
    if phone.type = 'video' then system = 'other' 
For Email:
    Fixed value  = 'email' 
Note: There are multiple sources in HSDS for the telecom in FHIR so the system will be  populated  based on phone.type mapping or fixed value of 'email' depending on the data populated."
* contact.telecom.value  -> "For Phone: 
    value = phone.number 
For Email,
    value = conact.email
Note: For phone, HSDS contact table will be linked to the  phone table using contact.id = phone.contact_id."
* contact.telecom.use  -> "Fixed value  = 'work' Note: This is a GAP in HSDS but since it is for work-related information, it is possible to set this to 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/R4/valueset-contact-point-use.html"
* contact.telecom.rank -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, it is used to specify a preferred order in which to use a contact point. The parent Plan-Net profile indicates this is a Must Support element but is optional, So it can be excluded since there is no source."
* contact.telecom.period -> "No Source. May be excluded from the mapping. Note: This is a GAP in HSDS. In FHIR, this data element captures the time period when the contact point was/is in use. But it can be excluded since there is no source and it is optional."
* contact.address -> "GAP in HSDs. May need to keep track of a contact party's address for contacting, billing or reporting requirements."
* endpoint -> "No Source. Note: This is for the technical implementation of web services for the organization and it is not for source-specific business data. It is marked as Must Support though optional in the Plan-Net profile. At this point, no organizayion specific web services have been identified so it may be ignored."



