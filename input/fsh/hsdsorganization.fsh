Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization

Profile: HSDSOrganization
Parent: PLANNETOrganization
Id: hsds-Organization
Title:    "HSDSOrganization"
Description: "The HSDSOrganization resource is a formal or informal grouping of people or organizations set up to assist people in coping with issues related to various social issues, including but not limited to: adequate housing, substance abuse, domestic conflict, mental health and/or personal/familial problems.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text."

Mapping: HSDSOrganizationToHSDS
Source: HSDSOrganization
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
Description: " This section describes the way HSDS version 2.0.1 elements are mapped from HSDS tables to the FHIR Organization profile. The left hand column represents the FHIR Organization element name, the right column contains the HSDS table.element followed by its description within parenthesis. Comments related to the mapping may follow the HSDS element description."
* id  -> "	organization.id	(Each organization must have a unique identifier.)	"
* meta  -> "	metadata	(The HSDS metadata table contains a record of the changes that have been made to the data in order to maintain provenance information.)	"
// * meta.id -> " GAP  metadata.resource_id doesn't appear to refer to Organizations. Is this intentional? HSDS definition (Each service, program. location, address, or contact will have a unique identifier.) "
* meta.lastUpdated  -> "	metadata.last_action_date	The date when data was changed. Since there may be more than one metadata record for each organization, we need use max(last_action_date) from metadata where (FHIR) Organization.id = (HSDS) metadata.resource_id. "
// * language  -> "	potential GAP The FHIR Resource.language element is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute).  HSDS language table contains details of the languages that are spoken at locations or services.  	"
// * text  -> "	GAP	FHIR Organization.text is datatype Narrative so the HSDS organization.description (A brief summary about the organization. It can contain markup such as HTML or Markdown.) does not correctly map to this FHIR element. 	"
// * Slices for extension  -> "	This FHIR element introduces a set of slices on Organization.extension. Slices are unordered and Open and can be differentiated by the discriminator value@url 	"
* extension[qualification]  -> "	service.accreditations	(Details of any accreditations. Accreditation is the formal evaluation of an organization or program against best practice standards set by an accrediting organization.) An additional mapping from HSDS organization.tax_status (Government assigned tax designation for tax-exempt organizations.) could be mapped to the extension:Organization.extension:qualification.code.value. Service level accreditations will need to be aggregated at organization level. However, the extension specification defined by Plan-Net (http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/qualification) requires the following parameters) in the extension:Organization.extension:qualification (or they are considered optional but Must Support. These elements include the identifier (optional but Must Support), code, issuer (optional, but Must Support), status, period (optional, but Must Support), whereValid (optional, but Must Support). HSDS does not include data that maps to these elements (except may be whereValid can be derived based the State on associated with the Organization.address, but that will not always be accurate). Overall, Plan-net defines this extension as optional.  So the GAPs in HSDS and will have to be resolved by maintaining a separate accreditation entity with those required details. Licenses can could also be included there in that separate accreditation entity.  "
* extension[org-description]  -> "	organization.description (A brief summary about the organization.) It can contain markup such as HTML or Markdown.	"
// * Slices for identifier  -> "	organization.tax_status	Government assigned tax designation for tax-exempt organizations.	"
* identifier.id  -> "	organization.id	(Each organization must have a unique identifier.) This FHIR element is meant to be unique id of the identifier and not the business identifier for the organization. Since this element is almost always optional, it can be omitted from the mapping and there is no need to populate with HSDS organization ID. "
* identifier.use  -> "	FHIR Organization.identifier.use allows an appropriate identifier for a particular context of use to be selected from a set of business identifiers associated with an organization. Because the closest business identifier in HSDS is organization.tax id (A government issued identifier used for the purpose of tax administration), for the purpose of the IG, tax_id is considered to be the business identifier for Organization and the official use for tax_id. .  This element is therefore defaulted to the value official drawn from the code system IdentifierUse http://hl7.org/fhir/identifier-use "
* identifier.type -> "  In FHIR, this represents a coded type for the identifier used to determine the identifier for a specific purpose. For the purpose of this IG and for the business identifier referenced in Organization.identifier, this value will deault to the value TAX drawn from the code system http://terminology.hl7.org/CodeSystem/v2-0203 "
* identifier.system -> " GAP in HSDS. In FHIR, this element establishes the namespace for identifier.value -  a URL that describes a value that is unique.  This system is not needed as the only business identifier associated with an Organization is the tax ID. We don't think there is a common namespace defined in the U.S for tax id since tax ID issuing authority/system will be different for each country. The namespace I've found for the U.S. IRS is urn:us:gov:irs: "
* identifier.value  -> "	organization.tax_id (A government issued identifier used for the purpose of tax administration.) During the original review with OpenReferral, Greg Bloom indicates tax id is as close to a business identifier that Community-Based Organizations have at this time.	"
* identifier.period  -> "	organization.year_incorporated (The year in which the organization was legally formed.) This is a questionable mapping.  Year_icorporated of an organization may not be the same as when TAX ID was issued (especially if company merged or split). But left mapping as is for now. Technically this is a GAP in the FHIR base resource (Organization). Organization.startDate and Organization.endDate could be included as an extension in this profile, and then considered for subsequent addition to the base FHIR Organization resource (i.e., organizations should have start and end date).  	"
* identifier.assigner -> " GAP in HSDS. The assigner for TAX id could be corresponding government entity (will depend on the country of the organization in HSDS). HSDS does not have that data in its source and given that it is not required in the Plan-net profile, this element will be considered optional.  " 
* active  -> "	This is a GAP in the HSDS but is a required element in FHIR. In HSDS,  services are associated with a status (service.status defined as The current status of the service.) The service table status element contains information other than active, inactive which must be resolved. For the purpose of this Implementation Guide, FHIR Organization.active will default to true.	"
* type -> " GAP in HSDS. This is a required FHIR CodeableConcept element where codes SHALL be taken from the extensible value set Organization Type http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/OrgTypeVS. The code atyprv used for Providers that do not provide healthcare, and this field will default to 'atyprv'.  " 
* name  -> "	organization.name	(The official or public name of the organization.)	"
* alias  -> "	organization.alternate_name	(Alternative or commonly used name for the organization.) Since alias is an array (list) in FHIR, this is mapped to the first position of the list. 	"
// * telecom.id  -> " phone.organization_id (The identifier of the organization for which this is the phone number.)		"
// * telecom.extension -> "GAP  "
* telecom.extension[contactpoint-availabletime]  -> " There is no equivalent mapping to Organization.telecom.extension:contactpoint-availabletime from HSDS since the HSDS schedule table contains details of when a service or location is open, and is not (directly) associated with an Organization. Impementation Comment: HSDS Schedule table can be mapped to HealthcareService.availableTime. This is not a required element in the parent Plan-net profile, so should be dropped from the profile. 	"
* telecom.extension[via-intermediary]  -> " In FHIR this represents a reference to an alternative point of contact. Originally proposed to map the HSDS contact and phone tables to this extension as the HSDS contact table contains details of the named contacts for services and organizations. In FHIR there is no Reference to HealthcareService from this extension. Do the contact and phone tables require an additional FHIR profile (PractitionerRole) to map these tables? Implementer comments: We don't believe that HSDS has source data that represents via-intermediary since there are no organizational relationships in the HSDS structure. HSDS contacts are appropriate to be part of PractitionerRole resource. HSDS does not have that source and it is not required in Plan-net profile, so it should be dropped from this profile. 	"
* telecom.system -> "phone.type (Indicates the type of phone service, drawing from the RFC6350 list of types (text (for SMS), voice, fax, cell, video, pager, textphone). This FHIR element bound to the ContactPointSystem value set, http://hl7.org/fhir/R4/valueset-contact-point-system.html  phone | fax | email | pager | url | sms | other. Constrain the default values of system = 'phone' or 'email' or 'url' which requires a new value set"  
* telecom.value  -> "	For Phone: phone.number (The phone number.) where phone.type = voice and phone.organization_id (The identifier of the organization for which this is the phone number.) = organization.id (use latest if multiple). For Email: organization.email. For URL: organization.url "
* telecom.use -> " GAP in HSDS. May be considered as GAP in HSDS but best to default this to 'work' drawn from the ContactPointUse value set http://hl7.org/fhir/R4/valueset-contact-point-use.html "
* telecom.rank -> " GAP in HSDS. In FHIR, used to specify a preferred order in which to use a set of contacts. ContactPoints with lower rank values are more preferred than those with higher rank values. The parent Plan-net profile indicates this is a Must Support element but is optional, so it can be omitted from the profile. "
* telecom.period -> " GAP in HSDS. In FHIR, captures the time period when the contact point was/is in use. This is not a required element in the profile so it can be dropped. Most source  systems will not have date ranges for telecom.  "
* address  -> " In HSDS v.2.0, the Location table is used to capture address details associated with locations that are part of that organization. Two HSDS tables are used, one for postal_address, the other for physical_address. In a future HSDS update, these tables will be collapsed, assumably along with a new type field to distinguish the type of address, but the following elements reflect mapping to both tables.    "
* address.id  -> " physical_address.id, postal_address.id (Each postal/physical address must have a unique identifier) associated with the location.id where FHIR organization.id is equal to HSDS location.organization_id. e.g. Reference(Location). Implementer comments: It may be possible to populate the FHIR profile.id from physical_address and postal_address but it's generally better avoid exposing internal ids (just resource level ids may be exception just to link back to the source system). 	"
* address.extension[geolocation] -> " Mapped to Location.latitude (coordinate of location expressed in decimal degrees in WGS84 datum) and Location.longitute (X coordinate of location expressed in decimal degrees in WGS84 datum) associated with the location.id where FHIR organization.id is equal to HSDS location.organization_id. Reference(Location)    "
* address.use  -> "	GAP in HSDS. This FHIR element describes the purpose for this address, and allows an appropriate address to be chosen from a list of many. Implementer comment: It is best to default this to 'work' drawn from the AddressUse value set http://hl7.org/fhir/R4/valueset-address-use.html	"
* address.type -> " GAP in HSDS. Once HSDS is updated to collapse the separate tables used for postal versus physical address, a new HSDS address_type element will map to this FHIR element that distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Reference(Location) "
* address.text -> " Concatentation of the appropriate HSDS address elements (all or some of the following - HSDS postal/physical address_1, city, region, state_province, postal_code, country) depending on whether the displayed address should be the postal versus physical address. In FHIR, this element specifies the entire address as it should be displayed e.g. on a postal label. This may be provided instead of or as well as the specific parts. "
* address.line  -> "	physical_address.address_1, postal_address.address_1 (The first line(s) of the address, including office, building number and street.) Reference(Location)	"
* address.city  -> "	physical_address.city, postal_address.city (The city in which the address is located.) Reference(Location)	"
* address.district  -> "	postal_address.location_region, physical_address.location_region (The region in which the address is located (optional).) Reference(Location)	"
* address.state  -> "	physical_address.state_province,postal_address.state_province (The state in which the address is located.) Reference(Location)	"
* address.postalCode  -> "	postal_address.postal_code, physical_address.postal_code (The postal code for the address.) Reference(Location)	"
* address.country  -> "	postal_address.country, physical_address.country (The country in which the address is located. This should be given as an ISO 3361-1 country code (two letter abbreviation).)	Reference(Location) "
* address.period  -> "	GAP in HSDS. This FHIR element represents the time period when the address was in use for the organization.		"
* partOf  -> "	GAP	There is no concept of organization affiliation in HSDS unless the program table is intended for a similar usage.	"
* contact  -> "	contact Table	(The HSDS contact table contains details of the named contacts for services and organizations.) May need to define contacts using Reference(Organization) and Reference(HealthcareService) when contact table contains details for named contacts associated with a particular service.	" 
* contact.id  -> " contact.id (Each contact must have a unique identifier.) Reference(Organization)	"
* contact.extension  -> " contact.department (The department that the person is part of.) within the context of Reference(Organization) "
* contact.purpose  -> "	GAP	In FHIR, this element is used to indicate the purpose of which the contact can be reached. Codes taken from the ContactEntityType value set which is extensible, so you can add new codes if none are applicable. http://hl7.org/fhir/ValueSet/contactentity-type	"
* contact.name  -> "	contact.name (The name of the person.)	Reference(Organization) "
* contact.telecom -> "This structure is used to associate contact detail information (telephone number, email address) by which the party can be contacted.  Uses the FHIR ContactPoint data type "
* contact.telecom.id -> " phone.contact.id (The identifier of the contact for which this is the phone number.) Reference(Organization) "
* contact.telecom.extension[contactpoint-availabletime] -> "GAP in HSDS. A FHIR extension representing the days and times a contact point is avaialble. "
* contact.telecom.extension[via-intermediary] -> " Handled by Reference(Location | Organization) but there's a gap in FHIR to map the reference to contacts associated with HSDS service. "
* contact.telecom.system -> " phone.type (Indicates the type of phone service, drawing from the RFC6350 list of types (text (for SMS), voice, fax, cell, video, pager, textphone).) Required binding to http://hl7.org/fhir/R4/valueset-contact-point-system.html "
* contact.telecom.value  -> "	phone.number (The phone number.) Reference(Organization)	"
* contact.telecom.use  -> "	GAP in HSDS.	In FHIR. identifies the purpose for the contact point.	"
* contact.telecom.rank -> " GAP in HSDS. In FHIR, used to specify a preferred order in which to use a set of contacts. ContactPoints with lower rank values are more preferred than those with higher rank values. The parent Plan-net profile does not specify this contact rank as a Must Support element as it does in Organization.telecom.rank, but is optional, so it can be omitted from the profile "
* contact.telecom.period -> " GAP in HSDS. In FHIR, specifies a preferred order in which to use a set of contacts. "
* contact.address -> " GAP in HSDs. May need to keep track of a contact party's address for contacting, billing or reporting requirements. "

