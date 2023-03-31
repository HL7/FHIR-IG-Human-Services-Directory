Instance: HumanServicesDirectories
InstanceOf: CapabilityStatement
Title: "Human Services Directories Capability Statement"
Description: "Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories Servers are defined. Systems implementing this capability statement should meet the CMS FInal Rule requirement for provider directory access. Plan-Net Clients can use the required capabilities to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* status = #draft
* date = "2023-03-15"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* instantiates = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CapabilityStatement/plan-net"
* description = "Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories Servers are defined."
//* format[0] = #xml
//* format[1] = #json
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">None</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/hsds/CapabilityStatement/HumanServicesDirectories</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats: </b>XML, JSON</li><li><b>Published:</b> 2023-03-15</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft</li></ul><p>Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories Servers are defined.</p><!-- Instantiates --><h3 class=\"no_toc\" id=\"should_css\">Implement All Or Parts Of The Following Capability Statements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/davinci-pdex-plan-net/CapabilityStatement/plan-net\">Plan-Net CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p>Description of the needed resources to be supported by the FHIR server, and the different possible interactions.</p><p><strong>Summary of Server Wide Interactions</strong></p><ul><li><code>transaction</code> interaction.</li><li><code>search-system</code> interaction.</li></ul><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><p><i>&#x2666; = <b>SHALL</b> expectation</i>;<i>&#x22C4; = <b>SHOULD</b> expectation</i>;<i>&#x25BF; = <b>MAY</b> expectation</i>;</p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#location\"><span style=\"white-space: nowrap;\">Location</span></a></td><td><span style=\"white-space: nowrap;\">vread<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">search-type<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Profiles --><td></td><!-- Supported Searches will need to do some sort of mapping instead of join to get the expectations printed out --><td><span style=\"white-space: nowrap;\">name<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">address.country<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">hoursofoperation<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">accessibiity<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td><!----></td><!-- Supported Operations --><td></td></tr><tr><td><a href=\"#organization\"><span style=\"white-space: nowrap;\">Organization</span></a></td><td><span style=\"white-space: nowrap;\">vread<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">search-type<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Profiles --><td></td><!-- Supported Searches will need to do some sort of mapping instead of join to get the expectations printed out --><td><span style=\"white-space: nowrap;\">address.city<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">address.postalCode<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">address.state<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">address.country<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">identifier<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td><!----></td><!-- Supported Operations --><td></td></tr><tr><td><a href=\"#healthcareservice\"><span style=\"white-space: nowrap;\">HealthcareService</span></a></td><td><span style=\"white-space: nowrap;\">vread<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">search-type<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Profiles --><td></td><!-- Supported Searches will need to do some sort of mapping instead of join to get the expectations printed out --><td><span style=\"white-space: nowrap;\">communication<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">program<span title=\"SHALL\"><sup>&#x2666;</sup></span>, </span><span style=\"white-space: nowrap;\">active<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td><!----></td><!-- Supported Operations --><td></td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"location\">Location</h4><p>Conformance Expectation:<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read a location (details and position information) for a physical place where human and social services are provided.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Location\">(http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Location)</a>, </p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>vread</code>, <code>search-type</code>.</li></ul>ns.n<p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning a Location resource using:<code class=\"highlighter-rouge\">GET [base]/Location/[id]/_history/vid</code></li><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/Location/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">name</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?name=[name]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">address.country</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?address.country=[address.country]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">hoursofoperation</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?hoursofoperation=[hoursofoperation]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">accessibiity</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Location?accessibiity=[accessibiity]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">name</a> (string):<p>Search for locations by location name.</p></li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">address.country</a> (string):<p>Search for locations by country.</p></li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">hoursofoperation</a> (string):<p>Search for locations by hours of operation.</p></li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">accessibiity</a> (string):<p>Search for locations by accessibiity options.</p></li></ul></div><h4 class=\"no_toc\" id=\"organization\">Organization</h4><p>Conformance Expectation:<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read a formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization\">(http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization)</a>, </p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>vread</code>, <code>search-type</code>.</li></ul>ns.n<p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning an Organization resource using:<code class=\"highlighter-rouge\">GET [base]/Organization/[id]/_history/vid</code></li><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/Organization/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.city</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.city=[address.city]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.postalCode</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.postalCode=[address.postalCode]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.state</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.state=[address.state]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.country</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.country=[address.country]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">identifier</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?identifier=[identifier]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.city</a> (string):<p>Search for organizations by city.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.postalCode</a> (string):<p>Search for organizations by postal code.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.state</a> (string):<p>Search for organizations by state.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">address.country</a> (string):<p>Search for organizations by country.</p></li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">identifier</a> (string):<p>Search for organizations by tax identifier (business indentifier associated with human services organizations.</p></li></ul></div><h4 class=\"no_toc\" id=\"healthcareservice\">HealthcareService</h4><p>Conformance Expectation:<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read the details of human and social services resources that are available at a location.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-HealthcareService\">(http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-HealthcareService)</a></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>vread</code>, <code>search-type</code>.</li></ul>ns.n<p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning a HealthcareService resource using:<code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]/_history/vid</code></li><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">communication</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?communication=[communication]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">program</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?program=[program]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">active</a></td><td>string</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?active=[active]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">communication</a> (string):<p>Search for human and social services by the language in which services are delivered.</p></li><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">program</a> (string):<p>Search for human and social services by the program under which this service is delivered.</p></li><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">active</a> (string):<p>Search for human and social services by the specified status for the service.</p></li></ul></div></div>"
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

* rest[0].resource[0].searchParam[0].name = "name"
* rest[0].resource[0].searchParam[0].type = #string
* rest[0].resource[0].searchParam[0].documentation = "Search for locations by location name."
* rest[0].resource[0].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[0].extension.valueCode = #SHALL

* rest[0].resource[0].searchParam[1].name = "address.country"
* rest[0].resource[0].searchParam[1].type = #string
* rest[0].resource[0].searchParam[1].documentation = "Search for locations by country."
* rest[0].resource[0].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[1].extension.valueCode = #SHALL

* rest[0].resource[0].searchParam[2].name = "hoursofoperation"
* rest[0].resource[0].searchParam[2].type = #string
* rest[0].resource[0].searchParam[2].documentation = "Search for locations by hours of operation."
* rest[0].resource[0].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[2].extension.valueCode = #SHALL

* rest[0].resource[0].searchParam[3].name = "accessibiity"
* rest[0].resource[0].searchParam[3].definition = "http://hl7.org/fhir/us/hsds/SearchParameter/location-accessibility"
* rest[0].resource[0].searchParam[3].type = #string
* rest[0].resource[0].searchParam[3].documentation = "Search for locations by accessibiity options."
* rest[0].resource[0].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[0].searchParam[3].extension.valueCode = #SHALL


* rest[0].resource[1].type = #Organization
* rest[0].resource[1].profile = "http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization"
* rest[0].resource[1].documentation = "Read a formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
* rest[0].resource[1].interaction[0].code = #vread
* rest[0].resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[0].extension.valueCode = #SHALL

* rest[0].resource[1].interaction[1].code = #search-type
* rest[0].resource[1].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].interaction[1].extension.valueCode = #SHALL

* rest[0].resource[1].searchParam[0].name = "address.city"
* rest[0].resource[1].searchParam[0].type = #string
* rest[0].resource[1].searchParam[0].documentation = "Search for organizations by city."
* rest[0].resource[1].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[0].extension.valueCode = #SHALL

* rest[0].resource[1].searchParam[1].name = "address.postalCode"
* rest[0].resource[1].searchParam[1].type = #string
* rest[0].resource[1].searchParam[1].documentation = "Search for organizations by postal code."
* rest[0].resource[1].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[1].extension.valueCode = #SHALL

* rest[0].resource[1].searchParam[2].name = "address.state"
* rest[0].resource[1].searchParam[2].type = #string
* rest[0].resource[1].searchParam[2].documentation = "Search for organizations by state."
* rest[0].resource[1].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[2].extension.valueCode = #SHALL

* rest[0].resource[1].searchParam[3].name = "address.country"
* rest[0].resource[1].searchParam[3].type = #string
* rest[0].resource[1].searchParam[3].documentation = "Search for organizations by country."
* rest[0].resource[1].searchParam[3].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[3].extension.valueCode = #SHALL

* rest[0].resource[1].searchParam[4].name = "identifier"
* rest[0].resource[1].searchParam[4].type = #string
* rest[0].resource[1].searchParam[4].documentation = "Search for organizations by tax identifier (business indentifier associated with human services organizations."
* rest[0].resource[1].searchParam[4].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[1].searchParam[4].extension.valueCode = #SHALL


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
  * type = #string
  * documentation = "Search for human and social services by the program under which this service is delivered."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * definition = Canonical(healthcareservice-program)

* rest[0].resource[2].searchParam[+]
  * name = "active"
  * type = #string
  * documentation = "Search for human and social services by the specified status for the service."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  //* definition =    ==> is this a built in search parameter?
