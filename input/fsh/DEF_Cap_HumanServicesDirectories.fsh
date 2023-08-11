Instance: HumanServicesDirectories
InstanceOf: CapabilityStatement
Usage: #definition
// Title: "Human Services Directories Capability Statement"
// Description: "Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories Servers are defined. Systems implementing this capability statement should meet the CMS FInal Rule requirement for provider directory access. Plan-Net Clients can use the required capabilities to access necessary data based on their local use cases and other contextual requirements."
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* status = #draft
* date = "2023-08-05"
* kind = #requirements
* fhirVersion = #4.0.1
* experimental = false
* format[0] = #xml
* format[1] = #json
* implementationGuide = "http://hl7.org/fhir/us/hsds/ImplementationGuide/hl7.fhir.us.hsds"
* name = "HumanServicesDirectoryCapabilityStatement"
* patchFormat = #application/json-patch+json
* publisher = "HL7 Human and Social Services Working Group (HSS WG)"
* description = "Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories (HSD) Servers are defined."
* rest.documentation = "The Human Services Directory Server **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide..\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json source formats for all HSDinteractions.\n1. Identify the HSDprofiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile  individually and in combination.\n1.Support forward and reverse chaining on all search parameters that specify the 'chain' property\n\nThe HSD Server **SHOULD**:\n\n1. Support xml source formats for all Human Services Directory interactions.\n"
* rest.mode = #server
// ended here
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">None</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/hsds/CapabilityStatement/HumanServicesDirectories</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>                    XML, JSON</li><li><b>Published:</b> 2023-03-15</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft</li></ul><p>Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories Servers are defined.</p><!-- Instantiates --><h3 class=\"no_toc\" id=\"should_css\">Implement All Or Parts Of The Following Capability Statements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/hsds/CapabilityStatement/HumanServicesDirectories\">Plan-Net CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p>Description of the needed resources to be supported by the FHIR server, and the different possible interactions.</p><p><strong>Summary of Server Wide Interactions</strong></p><ul><li><code>transaction</code> interaction.</li><li><code>search-system</code> interaction.</li></ul><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#location\">Location</a></td><td>vread, search-type</td><!-- Supported Profiles --><td></td><!-- Supported Searches --><td>name, address.country, hoursofoperation, accessibiity</td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td></td><!-- Supported Operations --><td></td></tr><tr><td><a href=\"#organization\">Organization</a></td><td>vread, search-type</td><!-- Supported Profiles --><td></td><!-- Supported Searches --><td>address.city, address.postalCode, address.state, address.country, identifier</td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td></td><!-- Supported Operations --><td></td></tr><tr><td><a href=\"#healthcareservice\">HealthcareService</a></td><td>vread, search-type</td><!-- Supported Profiles --><td></td><!-- Supported Searches --><td>communication, program, active</td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td></td><!-- Supported Operations --><td></td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"location\">Location</h4><p>Conformance Expectation:<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read a location (details and position information) for a physical place where human and social services are provided.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Location\">HSDSLocation</a>, </p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>vread</code>, <code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning a Location resource using:<code class=\"highlighter-rouge\">GET [base]/Location/[id]/_history/vid</code></li><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/Location/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">name</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?name=[name]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">address.country</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?address.country=[address.country]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">hoursofoperation</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?hoursofoperation=[hoursofoperation]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">accessibiity</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?accessibiity=[accessibiity]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">name</a> (string):<p>Search for locations by location name.</p></li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">address.country</a> (string):<p>Search for locations by country.</p></li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">hoursofoperation</a> (string):<p>Search for locations by hours of operation.</p></li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">accessibiity</a> (string):<p>Search for locations by accessibiity options.</p></li></ul></div><h4 class=\"no_toc\" id=\"organization\">Organization</h4><p>Conformance Expectation:<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read a formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization\">HSDSOrganization</a>, </p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>vread</code>, <code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning an Organization resource using:<code class=\"highlighter-rouge\">GET [base]/Organization/[id]/_history/vid</code></li><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/Organization/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.city</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.city=[address.city]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.postalCode</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.postalCode=[address.postalCode]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.state</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.state=[address.state]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.country</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.country=[address.country]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">identifier</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?identifier=[identifier]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.city</a> (string):<p>Search for organizations by city.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.postalCode</a> (string):<p>Search for organizations by postal code.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.state</a> (string):<p>Search for organizations by state.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.country</a> (string):<p>Search for organizations by country.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">identifier</a> (string):<p>Search for organizations by tax identifier (business indentifier associated with human services organizations.</p></li></ul></div><h4 class=\"no_toc\" id=\"healthcareservice\">HealthcareService</h4><p>Conformance Expectation:<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read the details of human and social services resources that are available at a location.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-HealthcareService\">HSDSHealthcareService</a></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>vread</code>, <code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning a HealthcareService resource using:<code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]/_history/vid</code></li><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">communication</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?communication=[communication]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">program</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?program=[program]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">active</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?active=[active]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">communication</a> (string):<p>Search for human and social services by the language in which services are delivered.</p></li><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">program</a> (string):<p>Search for human and social services by the program under which this service is delivered.</p></li><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">active</a> (string):<p>Search for human and social services by the specified status for the service.</p></li></ul></div></div>"
* text.status = #generated

* rest[0].mode = #server
* rest[0].documentation = "Description of the needed resources to be supported by the FHIR server, and the different possible interactions."
* rest[0].interaction[0].code = #transaction
* rest[0].interaction[1].code = #search-system


* rest[0].resource[0].type = #Location
* rest[0].resource[0].profile = "http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Location"
* rest[0].resource[0].documentation = "Read a location (details and position information) for a physical place where human and social services are provided."

* rest[0].resource[0].interaction[0].code = #vread
* rest[0].resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[0].extension.valueCode = #SHALL


* rest[0].resource[0].interaction[1].code = #search-type
* rest[0].resource[0].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].interaction[1].extension.valueCode = #SHALL

* rest[0].resource[0].searchParam[0]
  * name = "name"
  * type = #string
  * documentation = "Search for locations by a portion of the location's name or alias."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-name)

* rest[0].resource[0].searchParam[+]
  * name = "address.country"
  * type = #string
  * documentation = "Search for locations by a country specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-address-country)

* rest[0].resource[0].searchParam[+]
  * name = "hoursofoperation"
  * type = #string
  * documentation = "Search for locations by hours of operation."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-hoursofoperation)

* rest[0].resource[0].searchParam[+]
  * name = "accessibility"
  * type = #token
  * documentation = "Search for locations by accessibiity options."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-accessibility)

* rest[0].resource[0].searchParam[+]
  * name = "address"
  * type = #string
  * documentation = "Search for locations by a (part of the) address of the location."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-address)

* rest[0].resource[0].searchParam[+]
  * name = "address-city"
  * type = #string
  * documentation = "Search for locations by city specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-address-city)

* rest[0].resource[0].searchParam[+]
  * name = "address-state"
  * type = #string
  * documentation = "Search for locations by state specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-address-state)

* rest[0].resource[0].searchParam[+]
  * name = "address-postalcode"
  * type = #string
  * documentation = "Search for locations by postal code specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-address-postalcode)

* rest[0].resource[0].searchParam[+]
  * name = "organization"
  * type = #reference
  * documentation = "Search for locations that are managed by the specified organization."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(location-organization)


* rest[0].resource[1].type = #Organization
* rest[0].resource[1].profile = "http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization"
* rest[0].resource[1].documentation = "Read a formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
* rest[0].resource[1].interaction[0].code = #vread
* rest[0].resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension.valueCode = #SHALL

* rest[0].resource[1].interaction[1].code = #search-type
* rest[0].resource[1].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[1].extension.valueCode = #SHALL


* rest[0].resource[1].searchParam[0]
  * name = "address"
  * type = #string
  * documentation = "Search for organizations by matching any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-name)

* rest[0].resource[1].searchParam[+]
  * name = "address.postalCode"
  * type = #string
  * documentation = "Search for organizations by postal code specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-address-postalcode)

* rest[0].resource[1].searchParam[+]
  * name = "address.state"
  * type = #string
  * documentation = "Search for organizations by state specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-address-state)

* rest[0].resource[1].searchParam[+]
  * name = "address.city"
  * type = #string
  * documentation = "Search for organizations by city specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-address-city)

* rest[0].resource[1].searchParam[+]
  * name = "identifier"
  * type = #token
  * documentation = "Search for organizations by tax identifier (business indentifier) associated with human services organizations."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-identifier)

* rest[0].resource[1].searchParam[+]
  * name = "address.country"
  * type = #string
  * documentation = "Search for organizations by the country specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-address-country)

* rest[0].resource[1].searchParam[+]
  * name = "name"
  * type = #string
  * documentation = "Search for organizations by a portion of the organization's name or alias."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-name)

* rest[0].resource[1].searchParam[+]
  * name = "type"
  * type = #token
  * documentation = "Search for organizations by (a code for) the type of organization."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-type)


* rest[0].resource[2].type = #HealthcareService
* rest[0].resource[2].profile = "http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-HealthcareService"
* rest[0].resource[2].documentation = "Read the details of human and social services resources that are available at a location."
* rest[0].resource[2].interaction[0].code = #vread
* rest[0].resource[2].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[0].extension.valueCode = #SHALL

* rest[0].resource[2].interaction[1].code = #search-type
* rest[0].resource[2].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].interaction[1].extension.valueCode = #SHALL

* rest[0].resource[2].searchParam[0]
  * name = "communication"
  * type = #string
  * documentation = "Search for human and social services by the language in which services are delivered."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(healthcareservice-communication)

* rest[0].resource[2].searchParam[+]
  * name = "program"
  * type = #token
  * documentation = "Search for human and social services by the program under which this service is delivered."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(healthcareservice-program)

// * rest[0].resource[2].searchParam[+]
//  * name = "category"
// * type = #token
//  * documentation = "Search for human and social services by the specified category of service."
//  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//  * extension.valueCode = #SHALL
// * definition = Canonical(healthcareservice-category)
//  * definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"

//  * rest[0].resource[2].searchParam[+]
//  * name = "type"
//  * type = #token
//  * documentation = "Search for human and social services by the specified type of service."
//  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//  * extension.valueCode = #SHALL
//  * definition = Canonical(healthcareservice-type)
//  * definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"

//  * rest[0].resource[2].searchParam[+]
//  * name = "active"
//  * type = #token
//  * documentation = "Search for human and social services by the specified status of service."
//  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//  * extension.valueCode = #SHALL
//  * definition =    ==> is this a built in search parameter?

//  * rest[0].resource[2].searchParam[+]
//  * name = "name"
//  * type = #string
//  * documentation = "Search for human and social services by the specified status for the service."
//  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//  * extension.valueCode = #SHALL

//  * rest[0].resource[2].searchParam[+]
//  * name = "location"
//  * type = #reference
//  * documentation = "Search for human and social services offered at the specified location."
//  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//  * extension.valueCode = #SHALL
  
//  * rest[0].resource[2].searchParam[+]
//  * name = "organization"
//  * type = #reference
//  * documentation = "Search for human and social services offered by the specified organization."
//  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//  * extension.valueCode = #SHALL