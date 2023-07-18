Alias: $QualificationStatusCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/QualificationStatusCS
Alias: $QualificationStatusVS = http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/QualificationStatusVS
Alias: $USPSState = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $DaysOfWeekVS = http://hl7.org/fhir/ValueSet/days-of-week
Alias: $HumanServiceProgramVS = http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceProgram

Extension: Accessibility
Id: accessibility
Title: "Accessibility"
Description: "An extension to describe accessibility options offered at a Community Based Organization's location."
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from AccessibilityVS (extensible)


// Extension: HumanServiceDirectoryProgram
// Id: hsdprogram
// Title: "Human Service Directory Program"
// Url: "http://hl7.org/fhir/us/hsds/StructureDefinition/hsdprogram"
// Description: "Human Service Directory Program indicates the programs under which services offered by community-based organizations are offered. Organizing services under programs helps build more efficient and effective support network and enables communities to better address their unique needs and challenges.
//              This extension is included in the HealthcareService profile to allow users to search for services by the program under which they fall."
// * value[x] 0..0
// * extension contains
//    program  0..* MS
// * extension[program].value[x] only CodeableConcept
// * extension[program] ^short = "Human Service Program"
// * extension[program].value[x] 0..1
// * extension[program].value[x] from HumanServiceProgramVS (example)


Extension: ContactPointAvailableTime
Id: contactpoint-availabletime
Title: "Contactpoint Availabletime"
Description: "An extension representing the days and times a contact point is available"
* value[x] 0..0
* extension contains
   daysOfWeek 0..* MS and 
   allDay 0..1 MS and
   availableStartTime 0..1 MS and
   availableEndTime 0..1 MS
* extension[daysOfWeek].value[x] only code 
* extension[daysOfWeek].valueCode from $DaysOfWeekVS
* extension[allDay].value[x] only boolean 
* extension[availableStartTime].value[x] only time 
* extension[availableEndTime].value[x] only time  


Extension: OrgDescription
Id: org-description
Title: "Org Description"
Description: "An extension to provide a human-readable description of an organization."
* value[x] 1..1 MS
* value[x] only string 


Extension: Qualification
Id: qualification
Title: "Qualification"
Description: "An extension to add qualifications associated for a service provided by a Community Based Organization (e.g., accreditation, licenses)."
* extension contains
   identifier 0..* MS and 
   code 1..1 MS and
   issuer 0..1 MS and
   status 1..1 MS and
   period 0..1 MS and 
   whereValid 0..* MS
* extension[identifier].value[x] only Identifier 
* extension[identifier].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1
* extension[code].value[x] from http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/NonIndividualSpecialtiesVS (extensible)
* extension[issuer].value[x] 1..1
* extension[issuer].value[x] only Reference(HSDSOrganization)
* extension[status].value[x] 1..1
* extension[status].value[x] only  code 
* extension[status].valueCode from $QualificationStatusVS (required)
* extension[status].valueCode = $QualificationStatusCS#active (exactly)
* extension[period].value[x] only Period 
* extension[period].value[x] 1..1
* extension[whereValid].value[x] only CodeableConcept or Reference(HSDSLocation)
* extension[whereValid].value[x] from $USPSState (required)
* extension[whereValid].value[x] 1..1

Extension: ViaIntermediary
Id: via-intermediary
Title: "Via Intermediary"
Description: "A reference to an alternative point of contact (Organization, Location) for this organization"
* value[x] only Reference(PlannetPractitionerRole or PlannetOrganizationAffiliation or PlannetLocation or PlannetOrganization) 
* value[x] 1..1 MS