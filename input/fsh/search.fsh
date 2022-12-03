
// Instance: SearchParameter1
// InstanceOf: SearchParameter
// Usage: #definition
// Description: "SearchParameter1"
// * url = "http://hl7.org/fhir/SearchParameter/SearchParameter1"
// * name = "ID-SEARCH-PARAMETER"
// * status = #active
// * description = "SearchParameter1"
// * code = #asdf
// * base = #Organization
// * type = #string



// Instance: OrganizationAddressCity
// InstanceOf: SearchParameter
// Usage: #definition
// Description: "OrganizationAddressCity"
// * url = "http://hl7.org/fhir/us/hsds/SearchParameter/organization-address-city"
// * version = "0.1.0"
// * name = "HSDS_sp_organization_address_city"
// * derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address-city"
// * status = #active
// // * date = "2018-05-23 00:00:00+0000"
// * publisher = "HL7 Human and Social Services Work Group"
// * contact.name = "HL7 Human and Social Services Work"
// // * Group = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
// * description = "Select organizations within the specified city"
// // * jurisdiction = "United States of America (unknown#US)"
// * code = #address-city
// * base = #Organization
// * type = #string
// * expression = "Organization.address.city"
// * multipleOr = true
// * multipleAnd = true
// // * modifier = "exact, contains"