# FHIR Human Services Directory

## Overview
The Fast Healthcare Interoperability Resources (FHIR) Implementation Guide (IG) for Human Services Directories is a United States (US) Realm standard that offers three “new content” profiles that are conceptually based and aligned with the [DaVinci PDEX Plan-Net Provider Directory Implementation Guide (PDEX)](http://hl7.org/fhir/us/davinci-pdex-plan-net/). This approach was taken because the DaVinci PDEX Provider Directory Implementation Guide, STU 1.1  has been recommended for use as the health care provider directory standard by the Centers for Medicare & Medicaid Services [(CMS)](https://www.cms.gov/) in the [Interoperability and Patient Access Final Rule (CMS-9115-F)](https://www.cms.gov/about-cms/obrhi/interoperability/policies-and-regulations/cms-interoperability-and-patient-access-final-rule-cms-9115-f).

This guide re-uses three PDEX Provider Directory profiles, [PlannetOrganization](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Organization.html), [PlannetHealthcareService](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-HealthcareService.html), and the ([PlannetLocation](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Location.html)) profiles, to create new human and social service-specific profiles. The intent is to facilitate adoption of the new “human services-specific” profiles by organizations that have implemented, or intend to implement, the DaVinci PDEX Provider Directory Implementation Guide.

**Figure 1** shows the relationship between the FHIR profiles included in this Implementation Guide

<img style="width:60%;height:auto;float:none;align:middle;" src="HSD Resource Relationship Diagram.svg"/>

*Figure 1: Profile Relationships*

## Introduction and Background

Social determinants of health [(SDOH)](https://health.gov/healthypeople/priority-areas/social-determinants-health) are the conditions in the environment where people are born, live, learn, work, play, worship, and age that affect a wide range of health, functioning, and quality-of-life outcomes and risks.

Community services that address food insecurity and transportation issues, to manage chronic disease, support employment, economic independence, and to reduce social isolation, are tools that can help address these non-medical risk factors, and such services have been demonstrated to improve health outcomes and reduce the overall cost of care. 

However, information about the social services that are available to people in need is complex and ever-changing. In any given community, multiple “resource directories” might be available to people looking for assistance, whether to health care providers looking for appropriate community-based services for patient referrals, or to clients, searching community directories in their location when they seek help directly.

Many states have invested in resource directory and referral management systems to help streamline and improve their ability to connect high risk populations, such as older adults and people with disabilities, to community services and support. Provider- and plan-specific referral platforms often cannot leverage the existing networks of services that can help serve unmet social needs because they are unable to access these directories from within their clinical workflows. Information Technology developers who are implementing innovative community platforms, do not always incorporate the necessary interoperability standards into their products and create one-off approaches that result in siloed communities and inefficiencies for managing social care referrals. This diminishes an opportunity to improve the health outcomes and well-being for individuals in need.

Past and current efforts to offer a standards-based approach to managing directories of human and social services have yet to be published. In 2020, the [Administration for Community Living (ACL)](https://acl.gov/), a division of the U.S. Department of Health and Human Services [(HHS)](https://www.hhs.gov/) announced the [ACL Social Care Referrals Challenge](https://acl.gov/socialcarereferrals) competition for state and community leaders in the aging and disability network, health care systems, health plans, and health IT vendors, to promote care coordination by developing and/or optimizing interoperable and scalable technology solutions. Participants were invited to work collaboratively on enhancing scalable approaches for securely sharing standardized data on social determinants of health information and person-centered plans using open resource directories that can seamlessly connect and interoperate between health care system electronic health records and community-based organizations (CBO). These solutions would help track referral patterns and gaps in service, and visibly display social service and health-related outcomes over time by leveraging national standards for data exchange and common formats for resource directories.

The [ACL Challenge teams](https://acl.gov/socialcarereferrals) successfully demonstrated approaches for closed loop referral exchange and adoption of open APIs for accessing human service resource directories which allow for lookup and retrieval of resources by any state, CBO, or referral vendor. The Challenge teams also effectively tested the use of the [Gravity Project’s](https://thegravityproject.net/) coded terminologies that support the capture and exchange of social risk data across the health and human services ecosystem while promoting and preserving individuals’ privacy, safety, and security. In the bonus round of the Challenge, participating teams presented their approach to mapping taxonomies and terminologies across various social care domains to support the use of standardized data and to promote cross-sector care coordination.

[Information and Referral (I&R)](https://www.airs.org/i4a/pages/index.cfm?pageid=3500) is the art, science, and practice of bringing people and services together. To accomplish this goal, I&R organizations maintain resource databases that store information about services for specialized needs (e.g., aging population, respite services, childcare, special education, etc.) or offer comprehensive information about a broad range of health and human services (e.g., [2-1-1 call centers](https://www.211.org/)). These databases contain vital information about concrete aspects of services and programs, such as their names and addresses, hours of operation, eligibility requirements, and fees.

Databases containing resource directory information about community, social, health, government programs, and services and are kept up to date by trained database curators. People may seek help by making telephone contact, through online searches, and during in-person visits to community-based organizations. Some agencies provide information about all the social services available within a geographic area; while others are specialized, providing in-depth information about resources for specific population groups, such as older adults, children, victims of violence, military personnel and their families, or people with mental health issues. This information through various channels and associated application programming interfaces (API).

An API is an interface that allows one computer program or system to access the features and data of a different program or system. APIs define how data are formatted and the types of supported interactions (operations), such as how data can be searched. Data must be formatted, and often codified in a common manner, to be successfully exchanged and universally understood. APIs can be simple or complex, and may include different data structures for a wide array of interactions.

Many desktop and mobile applications use APIs to retrieve, store, and update data. Each API defines the standards and protocols that allow an external application to access its system’s data. The world of I&R has no shortage of APIs designed to exchange human services directory information. This IG proposes using standard FHIR APIs that have been mapped to HSDS-formatted content will accelerate the ability for multiple FHIR-enabled community resource referral platforms and organizations to access statewide and regional social service directories.

The FHIR Implementation Guide for Human and Social Services Resource Directories defines a FHIR interface to directories of social services information that are provided by community-based organizations at the locations in which they operate. Publication of these data through standard FHIR-based APIs will enable third parties to develop applications that can be used by healthcare providers, payers, and consumers to query directories of community-based services that can have a major impact on people’s health, well-being, and quality of life.

## Context, Scope and Support for Use Cases

### Context for STU 1

Many healthcare providers, managed-care organizations and payers are seeking to improve the health and well-being of their patients and members by assessing their social determinants of health needs by providing hrough care coordination and social care referrals to organizations offering the community services that can address their identified social care needs.

The primary source of requirements for developing the FHIR Human Services Directory IG was an analysis of the [Open Referral](https://docs.openreferral.org/en/latest/) Human Services Data Specification version 2.0.1 (HSDS).

HSDS defines the content that provides a minimum data set for I&R applications and specialized service directory applications used to discover these services. The [HSDS specification](https://docs.openreferral.org/en/v2.0.1/hsds/reference/#objects-and-fields) provides an opportunity to convey vital public service information using an open API approach.

HSDS is a recognized US and International standard describing the information collected by human and social service organizations -- descriptions of services, organizations that provide those services, where and how services can be accessed -- and reflects real-world requirements of users of social services directories. The HSDS structure allows directory information to be published in a machine-readable data format that can be understood by disparate entities that use HSDS and its suite of APIs: the [Human Service Data API Suite (HSDA)](https://docs.openreferral.org/en/v2.0.1/hsda/). 

HSDS has been adopted by a wide range of social care coordination vendors and was [endorsed](https://openreferral.org/airs-recommends-open-referral-for-resource-database-interoperability/) by the [Alliance of Information and Referral Systems (AIRS)](https://www.airs.org/i4a/pages/index.cfm?pageid=3581). AIRS is an international association of Information & Referral (I&R) service providers and a primary source for standards, program accreditation and practitioner certification for the I&R sector.

The appropriate classification of services is critical to service discovery as well as for analytics. Numerous types of services are represented in human services directories, at various levels of granularity, with many directories using different standards-based taxonomies. 

HSDS provides a way for the classifications of services that can be used in conjunction with multiple categorical schemas, however, HSDS is agnostic to any human service taxonomy that is used for the purpose of classification.

Some taxonomies are proprietary presenting a barrier to their use which poses additional challenges. A lack of a comprehensive, non-proprietary human services taxonomy is a significant and outstanding issue that faces the healthcare and social services domain. As the result of and agreed-upon and open-source terminology standard for human services, only example value sets are provided in this guide for the purpose of categorizing services as referenced in the HSDHealthcareService profile.

The HSDS standard reflects international, as well as US requirements. As the result, this guide could be adapted internationally by changes to the terminology bindings that may be specified for use within the US realm.

### Scope for STU 1

A fundamental purpose for the FHIR Human Services Directory IG is to provide a map between HSDS-structured directory data and the FHIR profiles contained within this guide to implementers familiar with the HSDS model. This serves to reduce or eliminate the need for implementers to have extensive experience mapping local human services directory data to FHIR.

The profiles described in this IG allow the service directory information used across multiple information management systems in the healthcare and social care sectors to be synched and matched. As more healthcare systems use FHIR-enabled electronic health record (EHR) systems, FHIR-based directories of interoperable community-based social services will allow providers and payers to initiate social care referrals to social service agencies available in the desired area from within their workflows, thereby improving care coordination and the health outcomes for their patients, members, and clients.

In addition, this guide supports FHIR-enabled consumer (mobile) applications to search CBO-directories by individuals/clients seeking to locate appropriate community-based services offered in a specified coverage area.

STU 1 of this implementation guide supports read-only queries of a single human services directory by FHIR-enabled applications as depicted in the Consuming Applications swimlane in Figure 2 below.

**Figure 2** illustrates the read-only scope for this implementation guide (IG) in the STU 1 publication.

<img style="width:60%;height:auto;float:none;align:center;" src="Workflow Analysis.svg"/>

*Figure 2: Scope for STU 1: Human Services Discovery*

These read-only queries can support a wide range of users and use cases within the context of service discovery using FHIR-enabled applications to query a human services directory in accordance with relevant search parameters/criteria (geography, goals, relevant personal attributes).

**Figure 3** emphasises the read-only scope for the APIs in STU 1 (GET), whereby a community-based organization’s database can be accessed by FHIR-enabled provider, payer, and consumer applications (EHR systems, payor systems, consumer mobile applications). STU 1 does not support PUT or POST, but may do so in a future iteration of this implementation guide.

<img style="width:75%;height:auto;float:none;align:middle;" src="HSD FHIR Implementation Scope.svg"/>

*Figure 3: Scope: Mapping between HSDS and FHIR Profiles & Read Only Capabilities*

**Out of Scope for this Release:**

-	Assessing eligibility for services is currently out of scope, though may be added to a future release.

-	Queries of federated resource directory information sources is out of scope; this IG addresses only instances in which a single source of resource directory information is made available for query by a FHIR-enabled client.

-	This IG does not address questions of user-submitted feedback about the quality of resource directory information (accuracy, clarity, etc.), nor does it specify mechanisms for gathering feedback from users about the quality of services themselves.

- STU 1 does not specify any standards-based taxonomy for the purpose of classifying and searching the directories.

-	Write-enabled ‘bi-directional’ functionality may be specified in future versions.

-	Individual Providers represented in human services directories: Current requirements in the HSDS model (version 2.0.1) do not capture information in human services directories about *individual (human)* providers. The HSDS model does contain contact information about the organizations and services they provide at their various locations. Since the primary purpose for this version of the IG is to provide a mapping between the HSDS v.2.0.1 and elements contained within these FHIR profiles, if following trial implementations, additional requirements are requested by implementers to include individual provider information in future iterations of this implementation guide, requirements can be submitted via the [Jira process](https://jira.hl7.org/projects/FHIR/summary) for future consideration. Additional profiles (e.g., Practitioner, PractitionerRole) will be required to include individual practitioners, and a subsequent ballot of this IG will be necessary as well. If there is an identified need to add individual providers to human services directories, this requirement should be considered within the context of the structure/content of HSDS to ensure the mapping between HSDS and FHIR is updated in a subsequent release of the implementation guide as well.

### Use Case Support

Example use cases may include:

- Healthcare providers searching for services/resources that may help address clients’ unmet social needs, 

- Consumers seeking information on available services provided by local community-based organizations, and

- Healthcare payers that offer care management programs designed to improve health outcomes through care coordination to members by searching for community resources and services that can help improve their member's health and quality of life.

This guide was tested during its development under two reference implementations (RI) using two standards-based human services taxonomies. One RI tested the IG using a [211 LA](https://211la.org/ )-based directory; the other RI used a directory based the open-source [Open Eligibility](https://auntbertha.atlassian.net/servicedesk/customer/portals) taxonomy. In recognition that neither taxonomy has been universally implemented by the diverse social care community, and the fact that each code system has challenges related to its consistent use and the proprietary nature of 211 LA, implementers of this IG (STU1) are free to use which ever taxonomy (standards-based, or local codes) is deemed useful for searching their human services directory.

Efforts are underway in the human services domain and by the [Gravity Project](https://thegravityproject.net/) to address the multiple coding challenges across social services Information & Retrieval (I&R), screening, interventions, billing, and reporting. This work is likely to produce suitable and acceptable [value sets](https://hl7.org/fhir/r4b/valueset.html) in the future 
for use in key elements of the profiles in this implementation guide.

Since this project was initiated in May 2022, the HSDS specification has undergone revision, in part as the result of the mapping analysis between HSDS v.2.0.1 and FHIR profiles. To ensure continued alignment between HSDS and FHIR, when HSDS v.3.0 is published, this project may apply updates based on HSDS 3.0 to the mapping and profiles in a future balloted version of this Implementation Guide.

## Relationship and Alignment to US Core, National Directory, and other FHIR Implementation Guides

The [CMS Interoperability and Patient Access Rule (CMS-9115-F)](https://www.cms.gov/about-cms/obrhi/interoperability/policies-and-regulations/cms-interoperability-and-patient-access-final-rule-cms-9115-f) specifies FHIR technical standards and implementation guides that support development and testing of FHIR APIs to foster interoperability. CMS identified technical standards for Provider Directories and recommended the DaVinci PDEX Plan Net Provider Directory Implementation Guide.

As healthcare providers and payers seek to incorporate social determinants of health screening assessments and referrals to social care agencies into their care management processes, by aligning with the DaVinci PDEX Plan-Net Provider Directory Implementation Guide (PDEX) version 1.1.0, the burden to incorporate human services directories into the systems used by healthcare providers and payers that have implemented PDEX should be minimized.

In addition, by taking the corresponding profiles included in other related FHIR implementation guides such as the [Validated Healthcare Directory Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/) (VHDir IG), the [National Healthcare Directory Exchange](http://hl7.org/fhir/us/directory-exchange/2022Sep/) and implementation guides produced by the [Gravity Project](https://thegravityproject.net/) (e.g., the [Social Determinants of Health (SDOH) Clinical Care Implementation Guide](http://hl7.org/fhir/us/sdoh-clinicalcare/)) into consideration during the development process, we intend to facilitate adoption of this standard and the integration of human service directories into the care management workflows of healthcare provider and payer organizations who will be implementing those standards as well.

**Figure 4** depicts the relationship between FHIR Human Services Directory IG and other related FHIR Implementation Guides *(update this diagram to include VhDir and the Gravity SDOH guides)*

<img style="width:80%;height:auto;float:none;align:middle;" src="HSD IG Relationship to Core and Other IGs.svg"/>

*Figure 4: Relationship between Implementation Guides*

### How this IG different from PDEX and related FHIR IGs

The FHIR Human Services and Resource Directory FHIR IG is aligned with the PDEX Plan Net Provider Directory IG (and US Core by inheritance), rather than being *derived from* each of the profiles directly to create the new FHIR-based APIs that provide access to human and social service directories. This is accomplished by copying most of the constraints from the ([PlannetHealthcareService](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-HealthcareService.html), [PlannetOrganization](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Organization.html)), and the [PlannetLocation](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Location.html). This was done due to the FHIR inheritance rules that govern profile development.

PDEX Plan-Net reuses the [US Core profiles](http://hl7.org/fhir/us/core/STU3.1.1/index.html#us-core-profiles) that are relevant to this implementation guide: (Organization and Location). Because US Core does not currently include a HealthcareService profile, Plan-Net based the PlannetHealthcareService profile on the FHIR [R4 HealthcareService](http://hl7.org/fhir/R4B/healthcareservice.html) **Resource**. A number of new extensions were added to the PDEX profiles that are relevant to this IG to support its requrements, but each is for optional use. For example, ([NewPatients](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-newpatients.html), [DeliveryMethod](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-delivery-method.html), [ContactPointAvailableTime](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-contactpoint-availabletime.html), [ViaIntermediary](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-via-intermediary.html)), [Accessibility](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-accessibility.html), [OrgDescription](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-org-description.html), and [Qualification](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-qualification.html). These extensions appear in the Human Services Directories profiles to maintain alignment and for potential future use, but many of the extensions have not been mapped due to a lack of source data in the current HSDS model.

FHIR US Core Release 3.1.1 addresses the data included in the United States Core Data for Interoperability (USCDI), version 1, and is designated by the HL7 US Realm Steering Committee as the “base specification” for any US-realm FHIR API that references the US Core profiles that are considered the foundation for US Realm FHIR implementation guides.

Inheritance is a key concept at the core of profiling. Profiling extends and constrains existing FHIR Resources and Data Types to meet project requirements. New profiles can inherit properties and behaviors from their base resource types and/or other profiles to define additional properties and behaviors that are specific to the new profile. Using inheritance allows for interoperability between systems and applications that use FHIR to exchange data to ensure consistency, reduce duplication, and to make development more efficient.

The new profiles, HSDHealthcareService, HSDOrganization, and HSDLocation modified the constraints applied to the Plan-Net data elements to avoid inheriting the extensibly-bound PlanNetHealthcareService.category & type value sets, to relax the required cardinality specified in the PlannetOrganization profile and align with the optional cardinality specified in [US Core Organization](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-organization.html) and the base R4 [Organization resource](http://hl7.org/fhir/R4B/organization.html) (0..*), as well as to allow the HSDLocation profile to [refernce](https://hl7.org/fhir/r4b/references.html) the HSDSOrganization profile instead of  [PlannetLocation](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Location.html). 

Additional search capabilities that are specific to Human Services directories conformant to the Human Services Data Specification (HSDS) were also added to the new Human Services Directory profiles.

The adoption of the new Human Services Directory profiles by implementers is intended to be facilitated by the alignment of the profiles within the Human Services Directory IG with US Core, Plan-Net, and the National Directory. The Plan-Net and National Directory provider IGs are conceptually based on the [Validated Healthcare Directory Implementation Guide (VHDir IG)](http://build.fhir.org/ig/HL7/VhDir/), so VHDir was included in the analysis for this project as well.

### Credits
This IG was developed by FEI Systems using [FHIR Shorthand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI toolkit](https://fshschool.org/docs/sushi/) (an acronym for "SUSHI Unshortens SHorthand Inputs"), a free, open source toolchain from the MITRE Corporation. 

The project team would like to thank leadership and colleagues for their support in the development of this Implementation Guide.

|**Name**			|**Organization**										|
|Serafina Versaggi	|BookZurman, Inc./FEI Systems (https://www.bookzurman.com/)		      |
|Sean Muir			|BookZurman, Inc./FEI Systems (https://www.bookzurman.com/)		      |
|Chirag Bhatt		|FEI Systems (https://feisystems.com/)						|

Generous assistance in testing this Implementation Guide was provided by the Departments of Health and Human Services Administration for Commuity Living (ACL) and the Administration for Children and Families (ACF) as well as other organizations and individuals. Capability statements were rendered with tools [tools](https://github.com/caspears/CapStatement) developed by Eric Haas and modified by Corey Spears. Our thanks to these contributors and to the many others not explicitly listed who contributed their time and expertise to this work:

|**Name**			|**Organization**										|
|Aadli Abdul-Kareem 	|Electronic Health Network, Inc. (www.https://www.ehnusa.com/)		|
|Courtney Baldridge	|USAging & Co-Chair, HL7 HSS Work Group					                  	|
|Jessica Banks		|Goldbelt (https://www.goldbelt.com/)				                      		|
|Hector Beltran		|Niche Aim Technologies (www.https://www.https://nicheaim.com/)		    |
|Matt Bishop		|Open City Labs (https://www.opencitylabs.com/wordpress/)		          	|
|Greg Bloom			|Open Referral (https://docs.openreferral.org/)				                	|
|Chirag Bhatt   |FEI Systems (https://feisystems.com/)						                      |
|Irene Boakye		|FEI Systems (https://feisystems.com/)						                      |
|Llew Brown			|Zane Networks (https://www.zanenetworks.com/)				                	|
|Gordon Campbell		|FEI Systems (https://feisystems.com/)			                  			|
|Kelly Cronin		|Administration for Community Living (https://acl.gov/)			            |
|Gargi Gajjar 		|MDIX, Inc. (https://www.mdixinc.com/)					                    	|
|Evelyn Gallegos		|EMI Advisors, Inc. (https://www.emiadvisors.net/)			          	|
|Teresa Gerard		|Guardian Group, LLC, National Nested Networks					              |
|Gabriela Gonzalez	|EMI Advisors, Inc. (https://www.emiadvisors.net/)			          	|
|Brian Handspicker	|Open City Labs (https://www.opencitylabs.com/wordpress/)	      		|
|Rob Hausam, MD		|Hausam Consulting LLC									                              |
|Demri Toop Henderson 	|EMI Advisors, Inc. (https://www.emiadvisors.net/)				      |
|HL7 HSS WG Members	|HL7 Human and Social Services Work Group (hsswg@lists.hl7.org)  		|
|Sheljina Ibrahim		|Elevance Health (https://www.elevancehealth.com/)			          	|
|Mohammad Jafari		|Co-Chair, HL7 HSS Work Group						      	                    |
|Saul Kravitz		|MITRE Corporation (https://www.mitre.org/)				                    	|
|Bob Kreha			|Brightstreet Group (www.brightstreetgroup.com/)		                		|
|Juan Llera			|Niche Aim Technologies (www.https://www.https://nicheaim.com/)	      	|
|Ken Lord			|MDIX, Inc. (https://www.mdixinc.com/)						                        |
|Joseph Lugo		|Administration for Community Living (https://acl.gov/)			            |
|Shailaja Madla		|Elevance Health (https://www.elevancehealth.com/)				            |
|Robert McClure, MD	|MD Partners, Inc. 									                                |
|Llyod McKenzie		|LM&A Consulting									                                  	|
|Oscar Mendoza		|Niche Aim Technologies (www.https://www.https://nicheaim.com/)		    |
|Sean Muir        |BookZurman, Inc. (https://www.bookzurman.com/)                       |
|Ami Patel			|Administration for Community Living (https://acl.gov/)			            |
|Sal Rana			|Goldbelt (https://www.goldbelt.com/)						                          |
|David Raznick		|Open Data Services/Open Referral (https://opendataservices.coop/)	  |
|Pete Richardson		|Brightstreet Group (www.brightstreetgroup.com/)			            	|
|Himali Saitwal 		|EMI Advisors, Inc. (https://www.emiadvisors.net/)			          	|
|Ken Salyards		|Administration for Children and Families (https://www.acf.hhs.gov/)  	|
|Christopher Shawn	|Co-Chair, HL7 HSS Work Group						                           	|
|Ioana Singureanu		|U.S. Department Veterans Affairs					                         	|
|Corey Spears		|Lantana Consulting Group (https://www.lantanagroup.com/)		          	|
|Gilbert Thompson		|Administration for Community Living (https://acl.gov/)		        	|
|Samia Warsame		|Zane Networks (https://www.zanenetworks.com/)					              |
|Michelle Zancan		|Goldbelt (https://www.goldbelt.com/)						                    |

#### Cross Version Analysis
{% include cross-version-analysis.xhtml %}
#### Dependency Table
{% include dependency-table.xhtml %}
#### Globals Table
{% include globals-table.xhtml %}
#### IP Statements
{% include ip-statements.xhtml %}
  •	  The Human Services Data Specification (HSDS), by Open Referral, led by Greg Bloom, is licensed under a [Creative Common Attribution-ShareAlike 4.0 International (CC BY SA 4.0) License.](https://creativecommons.org/licenses/by-sa/4.0/)

