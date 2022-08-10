// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService
Alias: PLANNETLocation = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Location
Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization
Alias: Accessibility = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/accessibility
Alias: ContactPointAvailableTime  = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/contactpoint-availabletime

// Profile: HSDSHealthcareService
// Parent: PLANNETHealthcareService
// Id: hsds-healthcare-service
// Title:    "HSDSHealthcareService"
// Description: "HSDSHealthcareService"

// // contactpoint-availabletime -- mapping

Extension: LocalAccessibility
Id: localaccessibility
Title: "LocalAccessibility"
Description: "An extension to describe accessibility options offered by a practitioner or at a location."
* value[x] 1..1 
* value[x] only CodeableConcept 
 

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
* meta.id -> "HSDS"
* meta.versionId -> "HSDS"
* meta.lastUpdated -> "HSDS"
* meta.source -> "HSDS"
* extension[Accessibility] -> "HSDS.accessibility_for_disabilities.id"
* telecom.extension[ContactPointAvailableTime] -> "HSDS"
//  * telecom.extension[ContactPointAvailableTime].system -> "HSDS.phone.service_at_location_id"
 
 
// Profile: HSDSOrganization
// Parent: PLANNETOrganization
// Id: hsds-Organization
// Title:    "HSDSOrganization"
// Description: "HSDSOrganization"

// Mapping:  USCorePatientToArgonaut
// Source:   USCorePatient
// Target:   "http://unknown.org/Argonaut-DQ-DSTU2"
// Id:       argonaut-dq-dstu2
// Title:    "Argonaut DSTU2"
// * -> "Patient"
// * extension[USCoreRaceExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-race]"
// * extension[USCoreEthnicityExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity]"
// * extension[USCoreBirthSexExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-birthsex]"
// * identifier -> "Patient.identifier"
// * identifier.system -> "Patient.identifier.system"
// * identifier.value -> "Patient.identifier.value"

 