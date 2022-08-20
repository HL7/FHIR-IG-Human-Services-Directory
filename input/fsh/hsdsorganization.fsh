Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization

Profile: HSDSOrganization
Parent: PLANNETOrganization
Id: hsds-Organization
Title:    "HSDSOrganization"
Description: "HSDSOrganization"

Mapping: HSDSOrganizationToHSDS
Source: HSDSOrganization
Target:   "HSDS"
Id:       hsds
Title:    "HSDS"
* id  -> "	organization.id	Each organization must have a unique identifier.	"
* meta  -> "	metadata	The metadata table contains a record of the changes that have been made to the data in order to maintain provenance information	"
* meta.lastUpdated  -> "	metadata.last_action_date	The date when data was changed.	"
* language  -> "	GAP	HSDS language table contains details of the languages that are spoken at locations or services. 	"
* text  -> "	organization.description	A brief summary about the organization. It can contain markup such as HTML or Markdown.	"
// * Slices for extension  -> "	program.id	Each program must have a unique identifier.	"
// * qualification  -> "	service.accreditations	Details of any accreditations. Accreditation is the formal evaluation of an organization or program against best practice standards set by an accrediting organization.	"
// * org-description  -> "	organization.description	A brief summary about the organization. It can contain markup such as HTML or Markdown.	"
// * Slices for identifier  -> "	organization.tax_status	Government assigned tax designation for tax-exempt organizations.	"
* id  -> "	organization.id	Each organization must have a unique identifier.	"
// * use  -> "	GAP		"
// * value  -> "	organization.tax_id	A government issued identifier used for the purpose of tax administration.	"
// * period  -> "	organization.year_incorporated	The year in which the organization was legally formed.	"
// * active  -> "	GAP		"
* type  -> "	GAP		"
* name  -> "	organization.name	The official or public name of the organization.	"
* alias  -> "	organization.alternate_name	Alternative or commonly used name for the organization.	"
// * id  -> "		"
// * contactpoint-availabletime  -> "	schedule.byday	iCal - Comma seperated days of the week. E.g. SU,MO,TU,WE,TH,FR,SA. Where freq is MONTHLY each part can be preceded by a positive or negative integer to represent which occurrence in a month; e.g. 2MO is the second Monday in a month. -1FR is the last Friday	"
// *	humanservicesparticipant-contact  -> "	contact.organization_id	The identifier of the organization for which this is a contact	"
// * value  -> "	organization.url	The URL (website address) of the organization.	"
* address  -> "physical_address table"
// postal_address table"	see mappings below	"
// * id  -> "		"
// * geolocation  -> "	Location.latitude	Y coordinate of location expressed in decimal degrees in WGS84 datum.	"
// * use  -> "	GAP		"
// * line  -> "	physical_address.address_1	The first line(s) of the address, including office, building number and street.	"
// * city  -> "	physical_address.city	The city in which the address is located.	"
// * district  -> "	postal_address.location_region	The region in which the address is located (optional).	"
// * state  -> "	physical_address.state_province	The state in which the address is located.	"
// * postalCode  -> "	postal_address.postal_code	The postal code for the address.	"
// * country  -> "	postal_address.country	The country in which the address is located. This should be given as an ISO 3361-1 country code (two letter abbreviation).	"
// * period  -> "	physical_address.country		"
* partOf  -> "	GAP		"
/* * contact  -> "	contact Table	The HSDS contact table contains details of the named contacts for services and organizations. May need to appropriately map contact information using Reference(ParticipantRole).	" 
*/
// * id  -> "		"
* extension  -> "	contact.department	The department that the person is part of	"
// * purpose  -> "	GAP		"
* name  -> "	contact.name	The name of the person	"
// * value  -> "	phone.number	The phone number	"
// * use  -> "	GAP		"
// * period  -> "	GAP		"
* address  -> "physical_address table "
// * postal_address table"	see mappings above	"


