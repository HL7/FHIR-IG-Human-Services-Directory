Instance: HumanServicesDirectory
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Human Services Directory Capability Statement"
Description: "Describes the expected capabilities of the Human Services Directory Server actor responsible for providing responses to the queries submitted by the Human Services Directory Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directory Servers are defined. Systems implementing this capability statement should meet the CMS FInal Rule requirement for provider directory access. Human Services Directory Clients can use the required capabilities to access necessary data based on their local use cases and other contextual requirements."
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/hsswg/index.cfm"
* status = #draft
* date = "2023-08-05"
* description = "Describes the expected capabilities of the Human Services Directory Server actor responsible for providing responses to the queries submitted by the Human Services Directory Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directory (HSD) Servers are defined."
* experimental = false
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* implementationGuide = "http://hl7.org/fhir/us/hsds/ImplementationGuide/hl7.fhir.us.hsds"
* jurisdiction = urn:iso:std:iso:3166#US
* kind = #requirements
* name = "HumanServicesDirectoryCapabilityStatement"
* patchFormat = #application/json-patch+json
* publisher = "HL7 Human and Social Services Working Group (HSS WG)"
* rest.documentation = "The Human Services Directory Server **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide..\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json source formats for all HSDinteractions.\n1. Identify the HSDprofiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile  individually and in combination.\n1.Support forward and reverse chaining on all search parameters that specify the 'chain' property\n\nThe HSD Server **SHOULD**:\n\n1. Support xml source formats for all Human Services Directory interactions.\n"
* rest.mode = #server
* rest.resource[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read

// ended here

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">     <h2 id=\"title\"> Human Services Directory CapabilityStatement</h2>     <ul>         <li><b>Official                 URL:</b><code>http://hl7.org/fhir/us/hsds/CapabilityStatement/HumanServicesDirectory</code></li>         <li><b>Implementation Guide Version:</b> 1.0.0</li>         <li><b>FHIR Version:</b> 4.0.1</li>         <li><b>Intended Use:</b> Requirements</li>         <li><b>Supported Formats:</b> XML, JSON</li>         <li><b>Published:</b> 2023-08-16</li>         <li><b>Published by:</b> HL7 Human and Social Services Working Group (HSSWG)</li>         <li><b>Status:</b> Draft</li>     </ul>     <p>This section describes the expected capabilities of the Human Services Directory Server actor         responsible for providing responses to the queries submitted by the Human Services Directory         Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters         supported by Human Services Directory Servers are defined.</p>     <h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3>     <p><strong>Summary of Search Criteria</strong></p>     <table class=\"grid\">         <thead>             <tr>                 <th>Resource Type</th>                 <th>Supported Profiles</th>                 <th>Supported Searches</th>                 <th>Supported <code>_includes</code></th>                 <th>Supported <code>_revincludes</code></th>                 <th>Supported Operations</th>             </tr>         </thead>         <tbody>             <tr>                 <td><a href=\"#organization\">Organization</a></td>                 <td><a href=\"StructureDefinition-hsds-Organization.html\">HSD Organization</a></td>                 <td> address-city, address-postalcode, address-state, address-country, name, type,                     identifier, _id, _lastUpdated </td>                 <td> </td>                 <td> HealthcareService:organization, Location:organization </td>                 <td> </td>             </tr>             <tr>                 <td><a href=\"#location\">Location</a></td>                 <td><a href=\"StructureDefinition-hsds-Location.html\">HSD Location</a></td>                 <td> accessibility, address-city, address-postalcode, address-state,                     address-country, name, organization, hoursofoperation, _id, _lastUpdated </td>                 <td> Location:organization </td>                 <td> HealthcareService:location </td>                 <td> </td>             </tr>             <tr>                 <td><a href=\"#healthcareservice\">HealthcareService</a></td>                 <td><a href=\"StructureDefinition-hsds-HealthcareService.html\"> HSD                         HealthcareService</a></td>                 <td> communication, location, name, organization, program, service-category,                     service-type, active, _id, _lastUpdated </td>                 <td> HealthcareService:location, HealthcareService:organization </td>                 <td/>                 <td/>             </tr>         </tbody>     </table>     <hr/>     <h4 class=\"no_toc\" id=\"organization\">Organization</h4>     <p>Conformance Expectation: <strong>SHALL</strong></p>     <p><a href=\"StructureDefinition-hsds-Organization.html\">HSD Organization</a>     </p>     <p>Reference Policy: <code>resolves</code></p>     <p>Profile Interaction Summary:</p>     <ul>         <li><strong>SHALL</strong> support <code>search-type</code>, <code>read</code>.</li>         <li><strong>SHOULD</strong> support <code>vread</code>.</li>     </ul>     <p>Fetch and Search Criteria:</p>     <ul>         <li> A Server <strong>SHALL</strong> be capable of returning a Organization resource using: <br/>             <code class=\"highlighter-rouge\">GET [base]/Organization/[id]</code>         </li>         <li> A Server <strong>SHOULD</strong> be capable of returning a Organization resource using: <br/>             <code class=\"highlighter-rouge\">GET [base]/Organization/[id]/_history/vid</code>         </li>         <!-- Only SHALL for include for now the capability statement does not create the primitive 				     extensios for this yet.  -->         <li> A Server <strong>SHALL</strong> be capable of supporting the following _includes: <br/>             N/A <br/>         </li>         <!-- Only SHALLs for revinclude for now the capability statement does not create the primitive extensios for this yet -->         <li> A Server <strong>SHALL</strong> be capable of supporting the following _revincludes:             <br/> HealthcareService:organization - <code class=\"highlighter-rouge\">GET                 [base]/Organization?[parameter=value]&amp;_revinclude=HealthcareService:organization</code><br/>             Location:organization - <code class=\"highlighter-rouge\">GET                 [base]/Organization?[parameter=value]&amp;_revinclude=Location:organization</code><br/>         </li>     </ul>     <p>Search Parameter Summary:</p>     <table class=\"grid\">         <thead>             <tr>                 <th>Conformance</th>                 <th>Parameter</th>                 <th>Type</th>                 <th>Example</th>             </tr>         </thead>         <tbody>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-name.html\">name</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET [base]/Organization?name=[name]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-type.html\">type</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?type=[system]|[code]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-address-city.html\">address-city</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?address-city=[address-city]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-identifier.html\">identifier</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?identifier=[identifier]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-address-postalcode.html\"                         >address-postalcode</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?address-postalcode=[address-postalcode]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-address-state.html\">address-state</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?address-state=[address-state]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-organization-address-country.html\"                     >address-country</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?address-country=[address-country]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"http://hl7.org/fhir/R4/search.html\">_id</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET [base]/Organization?_id=[id]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"http://hl7.org/fhir/R4/search.html\">_lastUpdated</a></td>                 <td> date </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Organization?_lastUpdated=[_lastUpdated]</code></td>             </tr>         </tbody>     </table>     <hr/>     <h4 class=\"no_toc\" id=\"location\">Location</h4>     <p>Conformance Expectation: <strong>SHALL</strong></p>     <p>Supported Profiles: <a href=\"StructureDefinition-hsds-Location.html\">HSD Location</a>     </p>     <p>Reference Policy: <code>resolves</code></p>     <p>Profile Interaction Summary:</p>     <ul>         <li><strong>SHALL</strong> support <code>search-type</code>, <code>read</code>.</li>         <li><strong>SHOULD</strong> support <code>vread</code>.</li>     </ul>     <p>Fetch and Search Criteria:</p>     <ul>         <li> A Server <strong>SHALL</strong> be capable of returning a Location resource using: <br/>             <code class=\"highlighter-rouge\">GET [base]/Location/[id]</code>         </li>         <li> A Server <strong>SHOULD</strong> be capable of returning a Location resource using: <br/>             <code class=\"highlighter-rouge\">GET [base]/Location/[id]/_history/vid</code>         </li>         <!-- Only SHALL for include for now the capability statement does not create the primitive 				     extensios for this yet.  -->         <li> A Server <strong>SHALL</strong> be capable of supporting the following _includes: <br/>             Location:organization - <code class=\"highlighter-rouge\">GET                 [base]/Location?[parameter=value]&amp;_include=Location:organization</code><br/>         </li>         <!-- Only SHALLs for revinclude for now the capability statement does not create the primitive extensios for this yet -->         <li> A Server <strong>SHALL</strong> be capable of supporting the following _revincludes:             <br/> HealthcareService:location - <code class=\"highlighter-rouge\">GET                 [base]/Location?[parameter=value]&amp;_revinclude=HealthcareService:location</code><br/>         </li>     </ul>     <p>Search Parameter Summary:</p>     <table class=\"grid\">         <thead>             <tr>                 <th>Conformance</th>                 <th>Parameter</th>                 <th>Type</th>                 <th>Example</th>             </tr>         </thead>         <tbody>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-name.html\">name</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET [base]/Location?name=[name]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-organization.html\">organization</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?organization=[organization]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-hoursofoperation.html\"                     >hoursofoperation</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?hoursofoperation=[hoursofoperation]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-accessibility.html\">accessibility</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?accessibility=[accessibility]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-address-city.html\">address-city</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?address-city=[address-city]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-address-state.html\">address-state</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?address-state=[address-state]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-address-postalcode.html\"                         >address-postalcode</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?address-postalcode=[address-postalcode]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-location-address-country.html\">address-country</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?address-country=[address-country]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"http://hl7.org/fhir/R4/search.html\">_id</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET [base]/Location?_id=[id]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"http://hl7.org/fhir/R4/search.html\">_lastUpdated</a></td>                 <td> date </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/Location?_lastUpdated=[_lastUpdated]</code></td>             </tr>         </tbody>     </table>     <hr/>     <h4 class=\"no_toc\" id=\"healthcareservice\">HealthcareService</h4>     <p>Conformance Expectation: <strong>SHALL</strong></p>     <p>Supported Profiles: <a href=\"StructureDefinition-hsds-HealthcareService.html\">HSD             HealthcareService</a>     </p>     <p>Reference Policy: <code>resolves</code></p>     <p>Profile Interaction Summary:</p>     <ul>         <li><strong>SHALL</strong> support <code>search-type</code>, <code>read</code>.</li>         <li><strong>SHOULD</strong> support <code>vread</code>.</li>     </ul>     <p>Fetch and Search Criteria:</p>     <ul>         <li> A Server <strong>SHALL</strong> be capable of returning a HealthcareService resource             using: <br/>             <code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]</code>         </li>         <li> A Server <strong>SHOULD</strong> be capable of returning a HealthcareService resource             using: <br/>             <code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]/_history/vid</code>         </li>         <li> A Server <strong>SHALL</strong> be capable of supporting the following _includes: <br/>             HealthcareService:location - <code class=\"highlighter-rouge\">GET                 [base]/HealthcareService?[parameter=value]&amp;_include=HealthcareService:location</code><br/>             HealthcareService:organization - <code class=\"highlighter-rouge\">GET                 [base]/HealthcareService?[parameter=value]&amp;_include=HealthcareService:organization</code><br/>         </li>         <!-- Only SHALLs for revinclude for now the capability statement does not create the primitive extensios for this yet -->         <li> A Server <strong>SHALL</strong> be capable of supporting the following _revincludes:             <br/> N/A <br/>         </li>     </ul>     <p>Search Parameter Summary:</p>     <table class=\"grid\">         <thead>             <tr>                 <th>Conformance</th>                 <th>Parameter</th>                 <th>Type</th>                 <th>Example</th>             </tr>         </thead>         <tbody>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-name.html\">name</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET                     [base]/HealthcareService?name=[name]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-organization.html\"                     >organization</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?organization=[organization]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-location.html\">location</a></td>                 <td> reference </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?location=[location]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-program.html\">program</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?program=[program]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-communication.html\"                     >communication</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?communication=[system]|[code]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-service-category.html\"                         >service-category</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?service-category=[system]|[code]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-service-type.html\"                     >service-type</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?service-type=[system]|[code]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"SearchParameter-healthcareservice-active.html\">active</a></td>                 <td> string </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?active=[active]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"http://hl7.org/fhir/R4/search.html\">_id</a></td>                 <td> token </td>                 <td><code class=\"highlighter-rouge\">GET                     [base]/HealthcareService?_id=[id]</code></td>             </tr>             <tr>                 <td><strong>SHALL</strong></td>                 <td><a href=\"http://hl7.org/fhir/R4/search.html\">_lastUpdated</a></td>                 <td> date </td>                 <td><code class=\"highlighter-rouge\">GET                         [base]/HealthcareService?_lastUpdated=[_lastUpdated]</code></td>             </tr>         </tbody>     </table>     <hr/>     <br/> </div> "
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
  * documentation = "Search for organizations specified in an address."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(organization-address)

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

* rest[0].resource[2].searchParam[+]
  * name = "category"
  * type = #token
  * documentation = "Search for human and social services by the specified category of service."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
//* definition = Canonical(healthcareservice-category)
  * definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"

* rest[0].resource[2].searchParam[+]
  * name = "type"
  * type = #token
  * documentation = "Search for human and social services by the specified type of service."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
//* definition = Canonical(healthcareservice-type)
  * definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"

* rest[0].resource[2].searchParam[+]
  * name = "active"
  * type = #token
  * documentation = "Search for human and social services by the specified status of service."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
 // * definition =    ==> is this a built in search parameter?

* rest[0].resource[2].searchParam[+]
  * name = "name"
  * type = #string
  * documentation = "Search for human and social services by the specified status for the service."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL

* rest[0].resource[2].searchParam[+]
  * name = "location"
  * type = #reference
  * documentation = "Search for human and social services offered at the specified location."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  
* rest[0].resource[2].searchParam[+]
  * name = "organization"
  * type = #reference
  * documentation = "Search for human and social services offered by the specified organization."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL