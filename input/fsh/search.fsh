Instance: organization-address-city
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-city"
* version = "1.0.0"
* name = "HSD_sp_organization_address_city"
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
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains


Instance: organization-address-postalcode
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-postalcode"
* version = "1.0.0"
* name = "HSD_sp_organization_address_postalcode"
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
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains


Instance: organization-address-state
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-state"
* version = "1.0.0"
* name = "HSD_sp_organization_address_state"
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
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains


Instance: organization-address
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address"
* version = "1.0.0"
* name = "HSD_sp_organization_address"
* derivedFrom = "http://hl7.org/fhir/us/core/SearchParameter/us-core-organization-address"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations with the specified address (matches any of the string elements of an address)"
* code = #address
* base = #Organization
* type = #string
* expression = "Organization.address"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: organization-address-country
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-country"
* version = "1.0.0"
* name = "HSD_sp_organization_address_country"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address-country"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations by the country specified in an address"
* code = #address-country
* base = #Organization
* type = #string
* expression = "Organization.address.country"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains


Instance: organization-name
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-name"
* version = "1.0.0"
* name = "HSD_sp_organization_name"
* derivedFrom = "http://hl7.org/fhir/us/core/SearchParameter/us-core-organization-name"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations by (a portion of) the organization's name"
* code = #name
* base = #Organization
* type = #string
* expression = "Organization.name"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains


Instance: organization-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-type"
* version = "1.0.0"
* name = "HSD_sp_organization_type"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-type"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select  organizations by (a code for) the type of organization"
* code = #type
* base = #Organization
* type = #token
* expression = "Organization.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains

Instance: organization-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-identifier"
* version = "1.0.0"
* name = "HSD_sp_organization_identifier"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* status = #active
* publisher = "HL7 Human and Social Services Work Group"
* contact.name = "HL7 Human and Social Services Work"
* description = "Select organizations with the specified identifier (Tax ID) supported as an organization identifier"
* code = #type
* base = #Organization
* type = #token
* expression = "Organization.identifier"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[1] = #exact
* modifier[2] = #contains