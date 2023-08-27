Alias: $USPSState = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $QualificationStatusCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/QualificationStatusCS
Alias: QualificationStatusVS = http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/QualificationStatusVS
Alias: AccessibilityVS = http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/AccessibilityVS
Alias: IndividualSpecialtyAndDegreeLicenseCertificateVS = http://hl7.org/fhir/us/hsds/ValueSet/NonIndividualSpecialties

// Extension: ContactDepartment
// Id: contact-department
// Title: "Contact Department"
// Description: "An extension to describe the department where the named contact person for the organization works."
// Context: Organization
/* * extension contains
   identifier 0..* and
   name 0..*
* extension[identifier].value[x] only Identifier 
* extension[identifier].value[x] 0..1
* extension[name].value[x] only string 
* extension[name].value[x] 0..1 */


// Extension: ContactDepartment
// Id: contact-department
// Title: "Contact Department"
// Description: "An extension to describe the department where the named contact person for the organization works."
// Context: Organization
// * value[x] 0..*
// * value[x] only string


Extension: OrgContactInfo
Id: org-contactinfo
Title: "Organization Contact Information"
Description: "An extension to describe the additional details for named contacts for organizations not included in contact.telecom element."
Context: Organization.contact.telecom
* extension contains
   title 0..* and
   department 0..* and
   email 0..*
* extension[title] ^short = "Org Contact Title"
* extension[title].value[x] only string
* extension[title].value[x] 0..1
* extension[department] ^short = "Org Contact Department"
* extension[department].value[x] only string
* extension[department].value[x] 0..1
* extension[email] ^short = "Org Contact Email Address"
* extension[email].value[x] only string
* extension[email].value[x] 0..1

Extension: Qualification
Id: qualification
Title: "Qualification"
Description: "An extension to add qualifications for an organization (e.g. accreditation)."
Context: Organization
* extension contains
   identifier 0..* and 
   code 0..1 and
   issuer 0..1 and
   status 1..1 and
   period 0..1 and 
   whereValid 0..*
* extension[identifier].value[x] only Identifier 
* extension[identifier].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 0..1 
* extension[code].value[x] from IndividualSpecialtyAndDegreeLicenseCertificateVS (example)
* extension[issuer].value[x] 0..1
* extension[issuer].value[x] only Reference(HSDOrganization)
* extension[status].value[x] 0..1
* extension[status].value[x] only  code 
* extension[status].valueCode from QualificationStatusVS (example)
* extension[status].valueCode = $QualificationStatusCS#active (exactly)
* extension[period].value[x] only Period 
* extension[period].value[x] 0..1
* extension[whereValid].value[x] only CodeableConcept or Reference(HSDLocation)
* extension[whereValid].value[x] from $USPSState (required)
* extension[whereValid].value[x] 1..1