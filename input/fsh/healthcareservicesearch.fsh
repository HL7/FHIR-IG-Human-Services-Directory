Instance: healthcareservice-organization
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-organization"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-organization"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_organization"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-organization"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified organization"
* code = #organization
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.organization"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-communication
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-communication"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-communication"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_communication"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-communication"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified communication"
* code = #communication
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.communication"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-extraDetails
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-extraDetails"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-extraDetails"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_extraDetails"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-extraDetails"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified extraDetails"
* code = #extraDetails
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.extraDetails"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-location
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-location"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-location"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_location"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-location"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified location"
* code = #location
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.location"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-program
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-program"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-program"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_program"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-program"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified program"
* code = #program
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.program"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-category
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-category"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-category"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_category"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-category"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified category"
* code = #category
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.category"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-type
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-type"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-type"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_type"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-type"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified type"
* code = #type
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.type"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: healthcareservice-name
InstanceOf: SearchParameter
Usage: #definition
Description: "healthcareservice-name"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-name"
* version = "0.1.0"
* name = "HSDS_sp_healthcareservice_name"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/healthcareservice-name"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select healthcareservices with the specified name"
* code = #name
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.name"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains