Alias: $HumanServiceTypeVS = http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceProgram


Instance: healthcareservice-organization
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-organization"
* version = "1.0.0"
* name = "HSD_sp_healthcareservice_organization"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* status = #active
* date = "2023-08-20T00:00:00+00:00"
* publisher = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* contact.name = "HL7 Human and Social Services Working Group"
* description = "Select Human and Social services offered by the specified organization"
* code = #organization
* base = #HealthcareService
* type = #reference
* expression = "HealthcareService.providedBy"
* target = #Organization
* multipleOr = true
* multipleAnd = true
* chain[0] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"

Instance: healthcareservice-communication
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-communication"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_communication"
* status = #active
* publisher = "HL7 Human and Social Services Working Group"
* contact.name = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* description = "Select Human and Social services that can be delivered by the organization in the specified language"
* target = #HealthcareService
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
* version = "1.0.0"
* name = "HSD_sp_healthcareservice_location"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-location"
* status = #active
* date = "2023-08-20T00:00:00+00:00"
* publisher = "HL7 Human and Social Services Working Group"
* contact.name = "HL7 Human and Social Services Work"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* description = "Select Human and social services offered at the specified location"
* code = #location
* base = #HealthcareService
* type = #reference
* expression = "HealthcareService.location"
* target = #Location
* multipleOr = true
* multipleAnd = true
* chain[0] = "address"
* chain[+] = "address-postalcode"
* chain[+] = "address-city"
* chain[+] = "address-state"
* chain[+] = "organization"
* chain[+] = "type"

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
* contact.name = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
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


Instance: healthcareservice-service-category
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-service-category"
* version = "1.0.0"
* name = "HSD_sp_healthcareservice_category"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"
* status = #active
* date = "2023-08-20T00:00:00+00:00"
* publisher = "HL7 Human and Social Services Working Group"
* contact.name = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* description = "Select Human and social services by the specified category"
* code = #service-category
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.category"
* multipleOr = true
* multipleAnd = true
* modifier = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: healthcareservice-service-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-service-type"
* version = "1.0.0"
* name = "HSD_sp_healthcareservice_type"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* status = #active
* date = "2023-08-20T00:00:00+00:00"
* publisher = "HL7 Human and Social Services Working Group"
* contact.name = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* description = "Select Human and social services by the specified type"
* code = #service-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.type"
* multipleOr = true
* multipleAnd = true
* modifier = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: healthcareservice-name
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-name"
* version = "1.0.0"
* name = "HSD_sp_healthcareservice_name"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-name"
* status = #active
* date = "2023-08-20T00:00:00+00:00"
* publisher = "HL7 Human and Social Services Working Group"
* contact.name = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* description = "Select HealthcareServices with the specified name"
* code = #name
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.name"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #exact
* modifier[+] = #contains

Instance: healthcareservice-active
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/healthcareservice-active"
* version = "0.1.0"
* name = "HSD_sp_healthcareservice_active"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-active"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Working Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* description = "Select Human and social services by the specified  active status"
* code = #active
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.active"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains