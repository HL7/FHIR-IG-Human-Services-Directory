Alias: $HumanServiceTypeVS = http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceProgram

Instance: healthcareservice-organization
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-organization"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_organization"
* derivedFrom = "http://hl7.org/fhir/us/davinci-pdex-plan-net/SearchParameter/healthcareservice-organization"
* description = "Select Human and Social services offered by the specified organization"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work Group"
* code = #organization
* base = #HealthcareService
* type = #reference
* expression = "HealthcareService.providedBy"
* multipleOr = true
* multipleAnd = true
//* modifier[0] = #text
//* modifier[1] = #exact
//* modifier[2] = #contains


Instance: healthcareservice-communication
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-communication"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_communication"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services that can be delivered by the organization in the specified language"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/Healthcareservice-communication"
* code = #communication
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.communication"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: healthcareservice-location
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-location"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_location"
* derivedFrom = "http://hl7.org/fhir/us/davinci-pdex-plan-net/SearchParameter/healthcareservice-location"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services offered at the specified location"
* code = #location
* base = #HealthcareService
* type = #reference
* expression = "HealthcareService.location"
* multipleOr = true
* multipleAnd = true
//* modifier[0] = #text
//* modifier[1] = #exact
//* modifier[2] = #contains

Instance: healthcareservice-program
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-program"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_program"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-program"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* purpose = "Allow human services directories to be searched by the program under which they fall"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services offered under the specified program"
* code = #program
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.program"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: healthcareservice-category
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-category"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_category"
* derivedFrom = "http://hl7.org/fhir/us/davinci-pdex-plan-net/SearchParameter/healthcareservice-service-category"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services by the specified category"
* code = #category
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.category"
* multipleOr = true
* multipleAnd = true
//* modifier[0] = #text
//* modifier[1] = #exact
//* modifier[2] = #contains

Instance: healthcareservice-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-type"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_type"
* derivedFrom = "http://hl7.org/fhir/us/davinci-pdex-plan-net/SearchParameter/healthcareservice-service-type"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services by the specified type"
* code = #type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.type"
* multipleOr = true
* multipleAnd = true
//* modifier[0] = #text
//* modifier[1] = #exact
//* modifier[2] = #contains

Instance: healthcareservice-name
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-name"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_name"
* derivedFrom = "http://hl7.org/fhir/us/davinci-pdex-plan-net/SearchParameter/healthcareservice-name"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services by the specified name"
* code = #name
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.name"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: healthcareservice-active
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-active"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_active"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-active"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select Human and Social services by the specified  active status"
* code = #active
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.active"
* multipleOr = true
* multipleAnd = true
//* modifier[0] = #text
//* modifier[1] = #exact
//* modifier[2] = #contains