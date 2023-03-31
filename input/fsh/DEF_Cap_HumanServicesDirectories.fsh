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
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">None</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/hsds/CapabilityStatement/HumanServicesDirectories</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2023-03-15</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft</li></ul><p>Describes the expected capabilities of the Human Services Directories Server actor responsible for providing responses to the queries submitted by the Human Services Directories Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Human Services Directories Servers are defined.</p><!-- Instantiates --><h3 class=\"no_toc\" id=\"should_css\">Implement All Or Parts Of The Following Capability Statements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/davinci-pdex-plan-net/CapabilityStatement/plan-net\">Plan-Net CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p>Description of the needed resources to be supported by the FHIR server, and the different possible interactions.</p><p><strong>Summary of Server Wide Interactions</strong></p><ul><li><code>transaction</code> interaction.</li><li><code>search-system</code> interaction.</li></ul><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#location\">Location</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tvread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tname, address.country, hoursofoperation, accessibiity\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#organization\">Organization</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tvread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\taddress.city, address.postalCode, address.state, address.country, identifier\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#healthcareservice\">HealthcareService</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tvread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tcommunication, program, active\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"location\">Location</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read a location (details and position information) for a physical place where human and social services are provided.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Location\">(http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Location)</a>, </p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>vread</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Location resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]/_history/vid</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tname</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?name=[name]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.country</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?address.country=[address.country]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\thoursofoperation</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?hoursofoperation=[hoursofoperation]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taccessibiity</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?accessibiity=[accessibiity]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tname</a> (string):<p>Search for locations by location name.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.country</a> (string):<p>Search for locations by country.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\thoursofoperation</a> (string):<p>Search for locations by hours of operation.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/location.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\taccessibiity</a> (string):<p>Search for locations by accessibiity options.</p>\n</li></ul></div><h4 class=\"no_toc\" id=\"organization\">Organization</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read a formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization\">(http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization)</a>, </p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>vread</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning an Organization resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Organization/[id]/_history/vid</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Organization/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.city</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.city=[address.city]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.postalCode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.postalCode=[address.postalCode]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.state</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.state=[address.state]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.country</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?address.country=[address.country]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Organization?identifier=[identifier]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.city</a> (string):<p>Search for organizations by city.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.postalCode</a> (string):<p>Search for organizations by postal code.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.state</a> (string):<p>Search for organizations by state.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\taddress.country</a> (string):<p>Search for organizations by country.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/organization.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a> (string):<p>Search for organizations by tax identifier (business indentifier associated with human services organizations.</p>\n</li></ul></div><h4 class=\"no_toc\" id=\"healthcareservice\">HealthcareService</h4><p>Conformance Expectation:\t<strong>(conformance expectation undefined)</strong></p><p>Resource Specific Documentation:</p><blockquote><p>Read the details of human and social services resources that are available at a location.</p></blockquote><p>Base Profile: <a href=\"http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-HealthcareService\">(http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-HealthcareService)</a></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>vread</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a HealthcareService resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]/_history/vid</code>\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/HealthcareService/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcommunication</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?communication=[communication]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tprogram</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?program=[program]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tactive</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/HealthcareService?active=[active]</code></td></tr></tbody></table><div><p>Search Parameter Requirements (When Used Alone or in Combination):</p><ul><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tcommunication</a> (string):<p>Search for human and social services by the language in which services are delivered.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tprogram</a> (string):<p>Search for human and social services by the program under which this service is delivered.</p>\n</li><li><a href=\"http://hl7.org/fhir/R4/healthcareservice.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tactive</a> (string):<p>Search for human and social services by the specified status for the service.</p>\n</li></ul></div></div>"
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

* rest[0].resource[2].searchParam[0].name = "communication"
* rest[0].resource[2].searchParam[0].type = #string
* rest[0].resource[2].searchParam[0].documentation = "Search for human and social services by the language in which services are delivered."
* rest[0].resource[2].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].searchParam[0].extension.valueCode = #SHALL

* rest[0].resource[2].searchParam[1].name = "program"
* rest[0].resource[2].searchParam[1].type = #string
* rest[0].resource[2].searchParam[1].documentation = "Search for human and social services by the program under which this service is delivered."
* rest[0].resource[2].searchParam[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].searchParam[1].extension.valueCode = #SHALL

* rest[0].resource[2].searchParam[2].name = "active"
* rest[0].resource[2].searchParam[2].type = #string
* rest[0].resource[2].searchParam[2].documentation = "Search for human and social services by the specified status for the service."
* rest[0].resource[2].searchParam[2].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[2].searchParam[2].extension.valueCode = #SHALL
