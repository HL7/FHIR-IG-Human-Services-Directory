## FHIR Human Services Directory

### Overview
The Fast Healthcare Interoperability Resources (FHIR) Implementation Guide (IG) for Human Services Directories is a United States (US) Realm standard that offers three “new content” profiles that are conceptually based and aligned with the [DaVinci PDEX Plan Net Provider Directory Implementation Guide STU v.1.1.0](http://hl7.org/fhir/us/davinci-pdex-plan-net/). This approach was taken because the DaVinci PDEX Provider Directory Implementation Guide, STU 1.0  has been recommended for use as the health care provider directory standard by the Centers for Medicare & Medicaid Services [(CMS)](https://www.cms.gov/) in the [Interoperability and Patient Access Final Rule (CMS-9115-F)](https://www.cms.gov/about-cms/obrhi/interoperability/policies-and-regulations/cms-interoperability-and-patient-access-final-rule-cms-9115-f).

The terms [human services](https://en.wikipedia.org/wiki/Human_services) and [social services](https://en.wikipedia.org/wiki/Social_services) refer to assistance that helps to meet people’s basic needs. These services often target underrepresented, disadvantaged, and underserved individuals — such as homeless and poverty-stricken populations, as well as disabled and senior communities.

Human services may be delivered by a broad range of occupations, including counselors, psychologists, and social workers. These professionals may work on prevention, remediation, or both and seek to improve access to basic needs, from mental healthcare to shelter to individuals in need. Human services focus on community-based work, and help to coordinate services between agencies that are provided by private and independent organizations, administered by government agencies, and the healthcare delivery sector.

Social services is often considered to be one of the many subsets of human services. Social service providers also connect people with the services they need.

Within the context of this implementation guide, these terms may be used interchangeably and are intended to distinguish these types of services from the healthcare services and interventions that are provided by clinicians and that are accessed from a healthcare service directory such as the National Provider or Plan-Net Provider Directories.

The Human Services Directories FHIR implementation guide is intended to facilitate adoption of new “human services-specific” profiles by organizations that have implemented, or intend to implement, the DaVinci PDEX Provider Directory Implementation Guide, by re-using and aligning with three of the PDEX Provider Directory profiles: [PlannetOrganization](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Organization.html), [PlannetHealthcareService](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-HealthcareService.html), and the [PlannetLocation](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Location.html) profiles to create new human and social service-specific profiles. In addition, this guide is also designed for use by organizations and applications seeking to implement FHIR-based access to human services directories when they familiar with the relationship between their local service directory data and [Open Referral's](https://docs.openreferral.org/en/latest/) [Human Services Data Specification version (HSDS)](https://docs.openreferral.org/en/v2.0.1/hsds/reference/#).

**Figure 1** illustrates the relationship between the FHIR profiles included in this Implementation Guide

<img style="width:60%;height:auto;float:none;align:middle;" src="HSD Resource Relationship Diagram.svg"/>

*Figure 1: Profile Relationships*

### Introduction and Background

Social determinants of health [(SDOH)](https://health.gov/healthypeople/priority-areas/social-determinants-health) are the conditions in the environment where people are born, live, learn, work, play, worship, and age that affect a wide range of health, functioning, and quality-of-life outcomes and risks.

Community services that address food insecurity and transportation issues, to manage chronic disease, support employment, economic independence, and to reduce social isolation, are tools that can help address these non-medical risk factors. These services have been [shown](https://aspe.hhs.gov/sites/default/files/documents/e2b650cd64cf84aae8ff0fae7474af82/SDOH-Evidence-Review.pdf) to improve health outcomes and reduce the overall cost of care. 

However, the information about the human services that are available to people in need is complex and ever-changing. In any given community, multiple “resource directories” might be available to people looking for assistance, whether to health care providers looking for appropriate community-based services for patient referrals, or to clients, searching community directories in their location when they seek help directly.

Many states have invested in human service resource directories and referral management systems to help streamline and improve their ability to connect high risk populations, such as older adults and people with disabilities, to community services and support. Provider- and plan-specific referral platforms often do not leverage the existing networks of services that can help serve unmet social needs because they are unable to access these directories from within their clinical workflows. Information Technology developers who are implementing innovative community platforms do not always incorporate the necessary interoperability standards into their products and create one-off approaches that result in siloed communities and inefficiencies for managing social care referrals. This diminishes an opportunity to improve the health outcomes and well-being for individuals in need.

Past and current efforts to offer a standards-based approach to managing directories of human and social services have yet to be published. In 2020, the [Administration for Community Living (ACL)](https://acl.gov/), a division of the U.S. Department of Health and Human Services [(HHS)](https://www.hhs.gov/) announced the [ACL Social Care Referrals Challenge](https://acl.gov/socialcarereferrals) competition for state and community leaders in the aging and disability network, health care systems, health plans, and health IT vendors, to promote care coordination by developing and/or optimizing interoperable and scalable technology solutions. Participants were invited to work collaboratively on enhancing scalable approaches for securely sharing standardized data on social determinants of health information and person-centered plans using open resource directories that can seamlessly connect and interoperate between health care system electronic health records and community-based organizations (CBO). These solutions would help track referral patterns and gaps in service, and visibly display social service and health-related outcomes over time by leveraging national standards for data exchange and common formats for resource directories.

The [ACL Challenge teams](https://acl.gov/socialcarereferrals) successfully demonstrated approaches for closed loop referral exchange and adoption of open APIs for accessing human service resource directories which allow for lookup and retrieval of resources by any state, CBO, or referral vendor. The Challenge teams also effectively tested the use of the [Gravity Project’s](https://thegravityproject.net/) coded terminologies that support the capture and exchange of social risk data across the health and human services ecosystem while promoting and preserving individuals’ privacy, safety, and security. In the bonus round of the Challenge, participating teams presented their approach to mapping taxonomies and terminologies across various social care domains to support the use of standardized data and to promote cross-sector care coordination.

[Information and Referral (I&R)](https://www.informusa.org/what-is-iandr) is the art, science, and practice of bringing people and services together. To accomplish this goal, I&R organizations maintain resource databases that store information about services for specialized needs (e.g., aging population, respite services, childcare, special education, etc.) or offer comprehensive information about a broad range of health and human services (e.g., [2-1-1 call centers](https://www.211.org/)). These databases contain vital information about concrete aspects of community-based organizations, their services and programs, such as their names and addresses, hours of operation, eligibility requirements, and fees.

Databases containing resource directory information about community, social, health, government programs, and services and are kept up to date by trained database curators. People may seek help by making telephone contact, through online searches, and during in-person visits to community-based organizations. Some agencies provide information about all the human and social services available within a geographic area; while others are specialized, providing in-depth information about resources for specific population groups, such as older adults, children, victims of violence, military personnel and their families, or people with mental health issues. This information is shared through various channels and associated application programming interfaces (API).

An API is an interface that allows one computer program or system to access the features and data of a different program or system. APIs define how data are formatted and the types of interactions (operations) that are supported, such as how data can be searched. Data must be formatted in a common manner to be successfully exchanged, and often codified to be universally understood. APIs can be simple or complex and may include different data structures for a wide array of interactions.

Many desktop and mobile applications use APIs to retrieve, store, and update data. Each API defines the standards and protocols that allow an external application to access its system’s data. The world of I&R has no shortage of APIs designed to exchange human services directory information. This IG proposes using standard FHIR APIs that have been mapped to HSDS-formatted content to accelerate the ability for multiple FHIR-enabled community resource referral platforms and organizations to access statewide and regional human services directories.

The FHIR Implementation Guide for Human Services Directories (STU 1) defines a FHIR interface to directories of human and social services information provided by community-based organizations at the locations in which they operate. Publication of these data through standard FHIR-based APIs will enable third parties to develop applications that can be used by healthcare providers, payers, and consumers to query the directories of community-based services that can have a major impact on people’s health, well-being, and quality of life.

### Context, Scope and Support for Use Cases

#### Context for STU 1

Many healthcare providers, managed-care organizations, and payers are seeking to improve health and well-being by assessing their patients and members social determinants of health needs to provide care coordination and social care referrals to organizations offering the community services that can address their identified social care needs.

A primary source of requirements for developing the FHIR Human Services Directory IG was analysis of the [Open Referral](https://docs.openreferral.org/en/latest/) [Human Services Data Specification version 2.0.1 (HSDS)](https://docs.openreferral.org/en/v2.0.1/hsds/reference/#).

HSDS defines the content that provides a minimum data set for I&R applications and specialized service directory applications used to discover these services. The [HSDS specification](https://docs.openreferral.org/en/v2.0.1/hsds/reference/#objects-and-fields) provides an opportunity to convey vital service information to the public using an open API approach.

HSDS is a recognized US and International standard describing the information collected by human and social service organizations -- descriptions of services, organizations that provide those services, where and how services can be accessed -- and reflects real-world requirements of the users of human services directories. The HSDS structure allows directory information to be published in a machine-readable data format that can be understood by disparate entities that use HSDS and its suite of APIs: the [Human Service Data API Suite (HSDA)](https://docs.openreferral.org/en/v2.0.1/hsda/). 

HSDS has been adopted by a wide range of social care coordination vendors and was [endorsed](https://openreferral.org/airs-recommends-open-referral-for-resource-database-interoperability/) by the [Alliance of Information and Referral Systems (AIRS)](https://www.informusa.org/). AIRS is an international association of Information & Referral (I&R) service providers and serves as a primary source for standards, program accreditation and practitioner certification for the I&R sector.

Appropriate classification of services is critical to service discovery as well as for analytics. Numerous types of services are represented in human services directories at various levels of granularity, with many directories using different standards-based taxonomies. 

HSDS provides a way for the classifications of services that can be used in conjunction with multiple categorical schemas. However, HSDS is agnostic to any human service taxonomy used for the purpose of identifying and classifying services.

Some human services taxonomies are proprietary, presenting a barrier to their use which poses additional challenges. A lack of a comprehensive, non-proprietary human services taxonomy is a significant and outstanding issue that faces the healthcare and social services domain. As the result of the lack of an agreed-upon and open-source terminology standard for human services, only example [value sets](https://hl7.org/fhir/r4b/valueset.html) are provided in this guide for the purpose of categorizing services as referenced in the HSDHealthcareService profile.

The HSDS standard reflects international, as well as US requirements. Therefore, this guide could be adapted internationally by changes to the terminology bindings that are specified for use within the US realm.

#### Scope for STU 1

A fundamental purpose for the FHIR Human Services Directory IG is to provide a map between HSDS-structured directory data and these FHIR profiles to implementers who are familiar with the HSDS model. This serves to reduce or eliminate the need for implementers to have extensive experience mapping local human services directory data to FHIR after they map their local service directory data to the HSDS model.

The profiles described in this IG allow the service directory information to be used across multiple healthcare and social care information management systems to be synched and matched. As healthcare, payer, and consumer systems adopt FHIR allowing access to FHIR-enabled electronic health record (EHR) systems, FHIR-enabled directories of interoperable community-based social services will permit users to initiate social care referrals to the available social service agencies in their desired area from within their workflows and processes. This will help to improve care coordination and health outcomes for patients, members, and clients.

This guide also supports FHIR-enabled consumer (mobile) applications used by individuals/clients seeking to locate appropriate community-based services offered in a specified coverage area to search CBO-directories.

**Figure 2** emphasises the scope, including mapping & transformation and read-only (GET) purpose for the APIs, where a community-based organization database is accessed by FHIR-enabled provider, payer, and consumer applications (EHR systems, payor systems, consumer mobile applications). STU 1 does not support PUT or POST, but may do so in a future iteration of this implementation guide.

<img style="width:75%;height:auto;float:none;align:middle;" src="HSD FHIR Implementation Scope.svg"/>

*Figure 2: Scope: Provide Maps between HSDS and FHIR Profiles for Read Only Capabilities*

**Out of Scope for this Release:**

-	Assessing eligibility for services is currently out of scope, though may be added to a future release.

-	This IG only addresses only instances in which a single source of resource directory information is made available for query by FHIR-enabled clients; a query of federated resource directory information sources is out of scope.

-	This IG does not address user-submitted feedback about the quality of resource directory information (accuracy, clarity, etc.), nor does it specify mechanisms for gathering feedback from users about the quality of services themselves.

- STU 1 does not specify a standards-based taxonomy for the purpose of classifying and searching the directories.

-	Write-enabled ‘bi-directional’ functionality may be specified in future versions.

-	Individual Providers are not represented in human services directories. The HSDS model (version 2.0.1) does not contain information about individual (human) providers in human services directories. The HSDS model contains contact information about organizations and the services they provide at various locations. Because the primary purpose for this version of the IG is to provide a mapping between the HSDS v.2.0.1 and elements contained within these FHIR profiles, following trial implementations, if additional requirements are requested by implementers to include individual provider information in future iterations of this implementation guide, those requirements can be submitted to this guide via the [Jira process](https://jira.hl7.org/projects/FHIR/summary) for future consideration. If a need to add individual providers to human services directories is identified, this requirement should be submitted to [OpenReferral](https://openreferral.org/) in the context of the structure/content of HSDS. If added to HSDS, additional profiles (e.g., Practitioner, PractitionerRole) will be required to include individual practitioners, mapping between HSDS and FHIR will need to be updated, and the implementation guide will require a subsequent ballot and a future release (STU) of the IG as well. 

#### Use Case Support

Example use cases supported by this guide include:

- Healthcare providers searching for services/resources that may help address clients’ unmet social needs to initiate social care referrals, 

- Consumers seeking information on available services provided by local community-based organizations, and

- Healthcare payers offering care management programs and care coordination seeking community services to help improve their member's health outcomes and quality of life.

STU 1 of the implementation guide supports read-only queries of a single human services directory by FHIR-enabled applications as depicted in the Consuming Applications swimlane in Figure 4 below.

**Figure 3** illustrates the workflow and read-only scope in support for use cases in STU 1

<img style="width:70%;height:auto;float:none;align:center;" src="Workflow Analysis.svg"/>

*Figure 3: Workflow Analysis Suporting Use Cases -- STU 1: Human Services Discovery*

These read-only queries support a wide range of users and use cases within the context of service discovery to a human services directory using FHIR-enabled applications in accordance with relevant criteria/search parameters (e.g., organization, program, geography, accessibility, hours of operation, etc.).

#### Testing and Future Efforts

This guide was tested during its development under two reference implementations (RI) using two standards-based human services taxonomies. One RI tested the IG using a [211 LA](https://211la.org/ )-based directory; the other RI used a directory based the open-source [Open Eligibility](https://auntbertha.atlassian.net/servicedesk/customer/portals) taxonomy. In recognition that neither taxonomy is being universally implemented by the diverse social care community, and the fact that each code system has challenges related to its consistent use, specifically the proprietary nature of 211 LA as a barrier to broader adoption, implementers of this IG (STU1) are free to use any taxonomy (standards-based or local, home-grown codes) as deemed useful within the human services directory.

Efforts are underway within the human services domain and by the [Gravity Project](https://thegravityproject.net/) to address the multiple coding challenges across human and social services Information & Retrieval (I&R), screening, interventions, billing, and reporting. This work is likely to produce suitable acceptable [code systems](http://hl7.org/fhir/R4B/codesystem.html) and associated [value sets](https://hl7.org/fhir/r4b/valueset.html) for use in key elements of profiles in this implementation guide in the future.

Since this project was initiated in May 2022, the HSDS specification has undergone revision, incorporating results from the mapping analysis conducted in preparation for this IG. HSDS v.3.0 was published in May 2023; the changelog is available [here](https://docs.openreferral.org/en/latest/hsds/changelog.html#v3-0). Previous versions of the HSDS format are supported now, but the use of v.2.0.1 is not encouraged by OpenReferral. This project will update the mapping and profiles based on HSDS 3.0 in the next balloted version of this Implementation Guide.



### Relationship to US Core, National Directory, and SDOH Clinical Care FHIR Implementation Guides

The [CMS Interoperability and Patient Access Rule (CMS-9115-F)](https://www.cms.gov/about-cms/obrhi/interoperability/policies-and-regulations/cms-interoperability-and-patient-access-final-rule-cms-9115-f) specifies the [FHIR technical standards and implementation guides](https://www.cms.gov/files/document/recommended-igs-api-and-proposed-api.pdf) that support development and testing of FHIR APIs to foster interoperability. CMS has identified technical standards for Provider Directories and recommended the [DaVinci PDEX Plan Net Provider Directory Implementation Guide STU v.1.1.0](http://hl7.org/fhir/us/davinci-pdex-plan-net/).

As healthcare providers and payers seek to incorporate social determinants of health screening assessments and referrals to social care agencies into their care management processes, aligning with the PDEX Provider Directory is intended to minimize the burden for healthcare providers and payers that have implemented (or intend to implement PDEX), to incorporate human services directories into the care management workflows in their systems.

Corresponding profiles included in other related FHIR implementation guides were reviewed and considered during the development process to ensure alignment and to facilitate adoption of this standard as well. These implementation guides include the [Validated Healthcare Directory Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/) (VHDir IG), versions of the National Healthcare Directory Exchange: [Sept 2022 release](http://hl7.org/fhir/us/directory-exchange/2022Sep/) and its [current build](http://build.fhir.org/ig/HL7/fhir-directory-exchange/), and implementation guides produced by the [Gravity Project](https://thegravityproject.net/) (e.g., the [Social Determinants of Health (SDOH) Clinical Care Implementation Guide](http://hl7.org/fhir/us/sdoh-clinicalcare/)).

This implementation guide is meant to work in conjunction with the other IGs referenced in Figure 4 below.

The National Directory IG, developed under the FAST Accelerator program provides guidance for establishing a verified provider directory using the attestation and validation processes, syncing with other distributed directories that subscribe to the verified directory and end user application that query that distributed directory for providers. The National Directory effort focuses on healthcare providers as well as social care providers. The Human Services Directory IG *aligns with* the National Directory specification and augments it by providing additional guidance and mapping to profiles specific to implementers that manage their social care directory data in a standardized HSDS format, or who can map existing directory data to that format. This IG supports the ability for implementers to adopt FHIR APIs that can be used to access a standalone social care directory or to sync their directory content between a centralized directory that has been implemented based on the National Directory IG.

Although this IG and the SDOH Clinical Care are derived from the US Core IG where applicable, there is no direct relationship between these two implementation guides as they apply to different steps in a typical social care workflow. 
The SDOH IG is a standard for the exchange of client level data when a client/patient is assessed for their social care needs and the services that may address them. The Human Services Directory IG may be used to search one or more directories to find social care service providers that might fulfill a referral. Once relevant social care service providers are discovered and selected, the SDOH Clinical Care IG may be used in the subsequent workflow steps (e.g., to create a ServiceRequest used to submit a referral to selected social care providers). Once there is better clarity on the terminology/taxonomy to be used for social care services, the SDOH IG and this IG will need to be aligned with guidance to facilitate more a seamless implementation of these IGs in a common social care workflow.

**Figure 4** describes the relationship between FHIR Human Services Directory IG and other related FHIR Implementation Guides

<img style="width:80%;height:auto;float:none;align:middle;" src="HSD IG Relationship to Core and Other IGs.svg"/>

*Figure 4: Relationship to US Core and other FHIR Implementation Guides*

### Alignment with PDEX and related FHIR IGs

The FHIR Human Services and Resource Directory FHIR IG has been aligned with the PDEX Plan Net Provider Directory IG (and US Core by inheritance), rather than being *derived* directl from each of the profiles to create the new FHIR-based APIs that provide access to human and social service directories. This was done due to FHIR inheritance rules that govern profile development. Inheritance is a key concept at the core of profiling. Profiling extends and constrains existing FHIR Resources and Data Types to meet project requirements. New profiles can inherit properties and behaviors from their base resource types and/or other profiles to define additional properties and behaviors that are specific to the new profile. Using inheritance allows for interoperability between systems and applications that use FHIR to exchange data to ensure consistency, reduce duplication, and to make development more efficient.

To create the new HSD profiles (HSDHealthcareService, HSDOrganization, and HSDLocation), constraints in the [PlannetHealthcareService](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-HealthcareService.html), [PlannetOrganization](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Organization.html), and [PlannetLocation](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Location.html) were copied into the new profiles, and modifications to those constraints were applied to elements based on the HSDS model and mapping requirements to avoid the requirment to inherit the extensibe bindings to value sets applied to the PlanNetHealthcareService.category & type elements, to relax the required cardinality specified in the PlannetOrganization profile and align with the optional cardinality specified in [US Core Organization](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-organization.html) and the base R4 [Organization resource](http://hl7.org/fhir/R4B/organization.html) (0..*), and to permit the HSDLocation profile to [reference](https://hl7.org/fhir/r4b/references.html) the HSDOrganization profile instead of [PlannetLocation](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-plannet-Location.html). 

FHIR US Core Release 3.1.1 addresses data included in the United States Core Data for Interoperability (USCDI), version 1, and is designated by the HL7 US Realm Steering Committee as the “base specification” for any US-realm FHIR API that references the US Core profiles that are considered the foundation for US Realm FHIR implementation guides.

PDEX Plan-Net reuses two [US Core profiles](http://hl7.org/fhir/us/core/STU3.1.1/index.html#us-core-profiles) relevant to this implementation guide: ([us-core-organization](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-organization.html) and [us-core-location](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-location.html)). Because US Core does not include a HealthcareService profile (even in the latest [published version](http://hl7.org/fhir/us/core/)), Plan-Net developed its PlannetHealthcareService profile using the base FHIR R4 [HealthcareService](http://hl7.org/fhir/R4B/healthcareservice.html#8.8) *Resource* and applied new constraints (e.g., active flag is required (1..1), and Must Support (MS) to various elements). The HealthcareService profile included in the Human Services directory is based on the R4 FHIR HealthcareService resource similar to the Plannet IG. 

The extensions included in this implementation guide are either derived from the Plannet IG, or have been created in alignment with Plannet extensions in order to modify value set bindings. In addition, some of the Plannet extensions defined as [Must Support](https://hl7.org/fhir/r4b/profiling.html#mustsupport) but which are optional based on their cardinality (0..*) have been excluded from the IG given the lack of source data in the HSDS model. (see the Differential table in the Formal Views of Profile Content section for each [profile](http://hl7.org/fhir/us/davinci-pdex-plan-net/artifacts.html#3))

The extensions included in this IG include:

- [Accessibility](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-accessibility.html) used in the HSDLocation profile, 
- [LocationBoundaryGeojson](http://hl7.org/fhir/StructureDefinition/location-boundary-geojson) used in the HSDLocation profile,
- [OrgDescription](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-org-description.html) used in the HSDOrganization profile

Both of these extensions were directly derived from Plannet (as opposed to *aligned with*). 

In addition, two new extensions were created that are specific to the Human Services IG. 

The first was modeled on a corresponding Plannet extension to allow example binding to the [Non-Individual Specialties](http://hl7.org/fhir/us/hsds/ValueSet/NonIndividualSpecialties) value set. This was done in order to exclude the [Individual and Group Specialties](http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/IndividualAndGroupSpecialtiesVS) codes from the qualification value set since those codes are likely not applicable to qualifications associated with community-based organizations:
 
- [Qualification](http://hl7.org/fhir/us/hsds/StructureDefinition/qualification)

The second, is a new one: 

- [ContactDepartment](http://hl7.org/fhir/us/hsds/StructureDefinition/contact-department) created to support additional contact information described in the HSDS model for Organizations that is not included in the Plannet IG. The ContactDepartment extension describes the department in which the named contact person for an organization works.

The following extensions have been omitted from the new Human Services Directory profiles that were aligned with Plannet due to a lack of source data in the HSDS model:

- [NewPatients](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-newpatients.html), 
- [DeliveryMethod](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-delivery-method.html),
- [ContactPointAvailableTime](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-contactpoint-availabletime.html), and
- [ViaIntermediary](http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition-via-intermediary.html)

Additional SearchParameters were added to the new Human Services Directory profiles to ensure that the Human Services Directory are conformant with the Human Services Data Specification (HSDS). *to be elaborated once the SearchParameters section has been updated prior to publication*

This alignment approach is used to facilitate the adoption of these new Human Services Directory profiles by implementers who have implemented the US Core, Plan-Net, and FAST National Directory implementation guides. Because the Plan-Net Provider and National Directory IGs are based conceptually on the [Validated Healthcare Directory Implementation Guide (VHDir IG)](http://build.fhir.org/ig/HL7/VhDir/), the VHDir guide was also included in the analysis for this project.

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

