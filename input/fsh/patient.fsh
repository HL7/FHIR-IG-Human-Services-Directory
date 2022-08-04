// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Alias: PLANNETHealthcareService = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-HealthcareService
Alias: PLANNETLocation = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Location
Alias: PLANNETOrganization = http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization
 
Profile: HSDSHealthcareService
Parent: PLANNETHealthcareService
Id: hsds-healthcare-service
Title:    "HSDSHealthcareService"
Description: "HSDSHealthcareService"

// contactpoint-availabletime -- mapping



Profile: HSDSLocation
Parent: PLANNETLocation
Id: hsds-Location
Title:    "HSDSLocation"
Description: "HSDSLocation"


Profile: HSDSOrganization
Parent: PLANNETOrganization
Id: hsds-Organization
Title:    "HSDSOrganization"
Description: "HSDSOrganization"

 