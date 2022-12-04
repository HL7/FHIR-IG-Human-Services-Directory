Instance: organization-address-city
InstanceOf: SearchParameter
Usage: #definition
Description: "organization-address-city"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-city"
* version = "0.1.0"
* name = "HSDS_sp_organization_address_city"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address-city"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations within the specified city"
* code = #address-city
* base = #Organization
* type = #string
* expression = "Organization.address.city"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: organization-address-postalcode
InstanceOf: SearchParameter
Usage: #definition
Description: "organization-address-postalcode"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-postalcode"
* version = "0.1.0"
* name = "HSDS_sp_organization_address_postalcode"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address-postalcode"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations within the specified postal code"
* code = #address-postalcode
* base = #Organization
* type = #string
* expression = "Organization.address.postalCode"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: organization-address-state
InstanceOf: SearchParameter
Usage: #definition
Description: "organization-address-state"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-state"
* version = "0.1.0"
* name = "HSDS_sp_organization_address_state"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address-state"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations within the specified state"
* code = #address-state
* base = #Organization
* type = #string
* expression = "Organization.address.state"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: organization-address
InstanceOf: SearchParameter
Usage: #definition
Description: "organization-address"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address"
* version = "0.1.0"
* name = "HSDS_sp_organization_address"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations within the specified address"
* code = #address
* base = #Organization
* type = #string
* expression = "Organization.address"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: organization-name
InstanceOf: SearchParameter
Usage: #definition
Description: "organization-name"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-name"
* version = "0.1.0"
* name = "HSDS_sp_organization_name"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-name"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations with the specified name"
* code = #name
* base = #Organization
* type = #string
* expression = "Organization.name | Organization.alias"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains

Instance: organization-type
InstanceOf: SearchParameter
Usage: #definition
Description: "organization-type"
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-type"
* version = "0.1.0"
* name = "HSDS_sp_organization_type"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-type"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations with the specified type"
* code = #type
* base = #Organization
* type = #token
* expression = "Organization.type"
* multipleOr = true
* multipleAnd = true
* modifier = #exact
* modifier = #contains
