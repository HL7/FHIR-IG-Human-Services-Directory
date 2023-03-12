# FHIR Human Services Directory

## Overview

The FHIR Implementation Guide (IG) for Human Services Directories is a US Realm standard that offers three “new content” profiles to the [DaVinci PDEX Plan-Net Provider Directory Implementation Guide (PDEX)](http://hl7.org/fhir/us/davinci-pdex-plan-net/). This guide re-uses three PDEX Provider Directory profiles: Organization, HealthcareService, and Location, and constrains those profiles using pertinent vocabulary bindings that support searching community-based organization (CBO) human and social services directories for services that can help mitigate the unmet social needs of patients, consumers, and caregivers.

This approach is intended to encourage adoption of this standard by facilitating the integration of these directories into healthcare provider and payer organization care management workflows by those who have already implemented the DaVinci PDEX Provider Directory Implementation Guide in order to meet the CMS Interoperability and Patient Access Final Rule. This approach can support clients using consumer FHIR-enabled applications to locate appropriate services in a specified coverage area from CBO-directories as well.

The primary source of requirements for the FHIR Human Services Directory IG was analysis of the [Open Referral Human Services Data Specification (HSDS)](https://docs.openreferral.org/en/v2.0.1/) [version 2.0.1](https://github.com/openreferral/specification/releases/tag/2.0.1). HSDS is a recognized US and International standard that describes information collected by human and social service organizations – the descriptions of services, institutions that provide services, where and how services can be accessed. The HSDS structure allows directory information to be published in a machine-readable data format that can be universally understood by disparate entities that use HSDS and its associated APIs: [Human Service Data API Suite HSDA](https://docs.openreferral.org/en/v2.0.1/hsda/). HSDS has been adopted by a wide range of social care coordination vendors and has been endorsed by the [Alliance of Information and Referral Systems (AIRS)](https://www.airs.org/i4a/pages/index.cfm?pageid=3581). AIRS is an international association of Information & Referral (I&R) service providers, and a primary source for standards, program accreditation and practitioner certification for the I&R sector.

The HSDS reflects the real-world requirements of users of social services directories. A primary purpose for the FHIR Human Services Directory IG is to provide implementers who are familiar with the HSDS format, a map between HSDS-structure directory data to FHIR profiles, eliminating the need for implementers to have extensive experience mapping local directory data to FHIR in order to implement the standard FHIR APIs that allow FHIR-based applications to access human services directories of community-based resources. 

Health IT standards and interoperability solutions for social care referrals, such as the open-source components described in this IG, will enable transformation, matching, editing and syncing of service directory information across multiple information management systems within the health and social care sectors.

As more healthcare systems begin using FHIR-enabled EHR-systems, interoperable, FHIR-based directories of community-based social services can help providers initiate social care referrals with available social service agencies and improve care coordination and health outcomes for patients and clients across the health care continuum.

Because the HSDS standard reflects international, as well as US requirements, this guide could be adapted internationally through changes to the terminology bindings that are currently constrained in this IG to those used in the US realm.

Since this project was initiated in May 2022, the HSDS specification has undergone revision, in part as the result of the mapping analysis based on HSDS v.2.0.1. To ensure continued alignment between HSDS and FHIR, once the new version of HSDS (3.0) has been published, this project will apply those updates to a future, balloted version of this Implementation Guide.

### 	Use Case and Scope for STU 1

**Use Case in Scope**

The initial version of this implementation guide (STU 1) supports *read-only queries* of a *single human services directory* by a wide variety of individuals using FHIR-enabled applications as depicted in the *Consuming Applications* swimlane in *Figure 1* below. 

These read-only queries can support a range of users and use cases within the context of **service discovery**, such as for example, a care provider seeking resources/services that may help address clients’ social needs using a FHIR-enabled application to query a human services directory in accordance with relevant criteria (geography, goals, relevant personal attributes) . 

**Figure 1** describes the use case in scope for release STU 1 of this implementation guide (IG). 

<img src="Workflow Analysis.svg" alt="*Use Case Analysis*" width="100%" height="100%" align="center"  />

*Figure 1: Use Case Analysis - Human Services Discovery*

**Scope for this Release**
 
**Figure 2** depicts the scope for the STU 1 release of this implementation guide (IG). STU 1 defines the APIs that expose a community-based organization’s database for access by a FHIR-enabled consumer or provider application (EHR-System, consumer mobile app). These are read-only APIs (GET) and the IG does not currently support PUT or POST.

<img src="HSD FHIR Implementation Scope.svg" alt="*Human Services Directory Conceptual Flow*" width="100%" height="100%" align="center"  />

*Figure 2: STU 1 Scope - Mapping from HSDS to FHIR Profiles - Read-Only Capability*

**Out of Scope for this Release:** 

- Assessing eligibility for services is currently out of scope, though may be added to a future release.

- Queries of federated resource directory information sources is out of scope; this IG addresses only instances in which a single source of resource directory information is made available for query by a FHIR-enabled client.

- This IG does not address questions of user-submitted feedback about the quality of resource directory information (accuracy, clarity, etc.), nor does it specify mechanisms for gathering feedback from users about the quality of services themselves.

- Write-enabled ‘bi-directional’ functionality may be specified in future versions.

###	Introduction

Information and Referral (I&R) is the art, science, and practice of bringing people and services together. To accomplish this goal, I&R organizations maintain resource databases that contain information about services for specialized needs (e.g., aging population, respite services, childcare, special education, etc.) or offer comprehensive information about a broad range of health and human services (e.g., 211 call centers). I&Rs maintain directories of vital information about concrete aspects of services and programs, such as program names and addresses, hours of operation, eligibility requirements, and fees and share this information through various channels.

These databases contain information about community, social, health, government programs, and services and are kept up to date by trained Database Curators. People may seek help by making telephone contact, online searches, and during in-person visits to community-based organizations. Some agencies provide information about the social services available within a geographic area; while others are specialized, providing in-depth information about resources for specific population groups such as older adults, children, victims of violence, military personnel and their families, or people with mental health issues.

The Human Services Data Specification (HSDS) defines the content that provides a minimum data set for I&R applications and specialized service directory applications used to discover these services. The HSDS specification provides an opportunity to convey vital public service information using an open API approach.

An API is an interface that allows one computer program or system to access the features and data of a different program or system. This interface defines how data is formatted and the types of supported interactions, such as how data can be searched. Data must be formatted and often codified in a common manner to be successfully exchanged and understood. APIs can be simple or complex, with different data structures for a wide array of interactions.

Many desktop and mobile applications use APIs to retrieve, store, and update data. Each API can define the standards and protocols that allow an external application to access its system’s data. The world of I&R has no shortage of APIs designed to convey human services directory information. Using a standard FHIR API that has been mapped to HSDS-formatted content will facilitate query access by multiple community resource referral platforms to statewide and regional social service directories.

The FHIR Implementation Guide for Human and Social Services Resource Directories defines a FHIR interface to directories of social services information provided by community-based organizations at locations in which they operate. Publication of these data through standard FHIR-based APIs enables third parties to develop applications that can be used by healthcare providers, payers, and consumers to query directories of community-based services to help address the circumstances that make it difficult to live healthy lives, and address unmet social needs.

**Figure 3** illustrates the relationship between the FHIR profiles included in this Implementation Guide

<img src="HSD Resource Relationship Diagram.svg" alt="*Profile Relationships*" width="100%" height="100%" align="center" />

*Figure 3: Relationship between FHIR profiles in the Human Services Directories (HSD) Implementation Guide*

###	 Background
Social determinants of health (SDOH) are the conditions in the environment where people are born, live, learn, work, play, worship, and age that affect a wide range of health, functioning, and quality-of-life outcomes and risks.

Community services that address food insecurity and transportation issues, manage chronic disease, support employment and economic independence, reduce social isolation, and address other non-medical risk factors have been demonstrated to improve health outcomes and reduce the cost of care. However information about the social services available to people in need is complex and ever-changing. In any given community, multiple "resource directories" might be available to people seeking assistance, whether it's health care providers looking for appropriate community-based services to refer patients, or clients searching the directory when seeking help directly.

Many states have invested in resource directory and referral management systems to help streamline and improve their ability to connect high risk populations, such as older adults and people with disabilities to long-term services and support. Provider- and plan-specific referral platforms often cannot leverage existing networks of services that can help address unmet social needs because they are unable to access their directories. Information Technology developers implementing innovative community platforms often do not incorporate necessary interoperability standards into their products, thereby creating one-off approaches, resulting in siloed communities, inefficiencies for managing social care referrals, and diminishing opportunities to improve outcomes for individuals in need of services in desired locations.

Past and current efforts to offer a standards-based approach to directories that support the human and social services domain have yet to be published. Most closely related, in 2020, the Administration for Community Living (ACL), a division of the U.S. Department of Health and Human Services (HHS) announced the Social Care Referrals Challenge competition for state and community leaders in the aging and disability network, health care systems, health plans, and health IT vendors to cultivate care coordination by developing and/or optimizing interoperable and scalable technology solutions. Participants were invited to work collaboratively on enhancing scalable approaches to secure sharing of standardized data on social determinants and person-centered plans through the use of open resource directories that seamlessly connect and interoperate with health care system electronic health records to community-based organizations. The [ACL Social Care Referrals Challenge](https://acl.gov/socialcarereferrals) sought to develop interoperable and scalable technology solutions that leverage national standards for data exchange and common formats for resource directories that can help track referral patterns and gaps in service and to visibly display social service and health-related outcomes over time. 

Challenge teams successfully demonstrated approaches to closed loop referral exchange and technical adoption of open APIs for resource directories through HSDS and related mapping to FHIR profiles for standardized, open resource directories that allow for lookup and retrieval of resources by any state, CBO, or referral vendor. Challenge teams also have effectively tested the use of the [Gravity Project’s](https://thegravityproject.net/) coded terminologies to support the capture and exchange of social risk data across the health and human services ecosystem while promoting and preserving individuals’ privacy, safety, and security. In the bonus round, participating teams presented approaches to mapping taxonomies and terminologies across various social care domains to enable the use of standardized data and promote cross-sector care coordination. 

### Relation to US Core and other IGs

The CMS Interoperability and Patient Access Rule (CMS-9115-F) specified FHIR technical standards and implementation guides that support development and testing of FHIR APIs to foster interoperability. CMS identified technical standards for Provider Directories and recommended the DaVinci PDEX Plan Net Provider Directory Implementation Guide. As healthcare providers and payers seek to incorporate social determinants of health screening assessments and referrals to social care agencies into their care management processes, we chose an approach intended to help minimize the effort/burden required to implement FHIR-based human and social services directories into current workflow practices by the healthcare providers, payers, and consumer applications that have implemented the CMS-recognized FHIR standard for accessing healthcare provider directories, the [DaVinci PDEX Plan-Net Provider Directory Implementation Guide (PDEX) version 1.1.0.](http://hl7.org/fhir/us/davinci-pdex-plan-net/)

**Figure 4** depicts the relationship between FHIR HSD IG and other derived or related FHIR Implementation Guides

<img src="HSD IG Relationship to Core and Other IGs.svg" width="100%" height="100%" align="center" />

*Figure 4: Relationship between IGs*

- FHIR US Core addresses USCDI and it is designated by the HL7 US Realm Steering Committee as the “base specification” for any US-realm FHIR API
- PDEX Plan Net reuses “US Core”
- The FHIR Human Services and Resource Directory FHIR IG reuses the PDEX Plan Net Provider Directory IG (and US Core by inheritance), to create standard FHIR-based APIs that can be used to access a set of human and social service directories by constraining the data elements, terminology, and search capabilities that are specific to Human Services directories which are conformant to the Human Services Data Specification (HSDS)

### Authors
The project team would like to thank leadership and colleagues for their support in the development of this Implementation Guide:

|**Name**			|**Organization**										|
|Serafina Versaggi	|[BookZurman, Inc./FEI Systems] (https://www.bookzurman.com/)		|
|Sean Muir			|[BookZurman, Inc./FEI Systems] (https://www.bookzurman.com/)		|
|Chirag Bhatt		|[FEI Systems] (https://feisystems.com/)						|

### Credits
This IG was developed by FEI Systems under the direction of the authors using [FHIR Shorthand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI toolkit](https://fshschool.org/docs/sushi/) (an acronym for "SUSHI Unshortens SHorthand Inputs"), a free, open source toolchain from the MITRE Corporation. 

Generous assistance in testing this Implementation Guide was provided by the Departments of Health and Human Services Administration for Commuity Living (ACL) and the Administration for Children and Families (ACF) as well as other organizations and individuals as follows. Our thanks to these and to the many others not explicitly listed who contributed their time and expertise to this work:

|**Name**			|**Organization**										|
|Greg Bloom			|[Open Referral] (https://docs.openreferral.org/)				|
|David Raznick		|[Open Data Services/Open Referral] (https://opendataservices.coop/)	|
|Kelly Cronin		|[Administration for Community Living] (https://acl.gov/)			|
|Ami Patel			|[Administration for Community Living] (https://acl.gov/)			|
|Joseph Lugo		|[Administration for Community Living] (https://acl.gov/)			|
|Gilbert Thompson		|[Administration for Community Living] (https://acl.gov/)			|
|Irene Boakye		|[FEI Systems] (https://feisystems.com/)						|
|Gordon Campbell		|[FEI Systems] (https://feisystems.com/)						|
|Ken Salyards		|[Administration for Children and Families] (https://www.acf.hhs.gov/)	|
|Gargi Gajjar 		|[MDIX, Inc.] (https://www.mdixinc.com/)						|
|Ken Lord			|[MDIX, Inc.] (https://www.mdixinc.com/)						|
|Jessica Banks		|[Goldbelt] (https://www.goldbelt.com/)						|
|Sal Rana			|[Goldbelt] (https://www.goldbelt.com/)						|
|Michelle Zancan		|[Goldbelt] (https://www.goldbelt.com/)						|
|Llew Brown			|[Zane Networks] (https://www.zanenetworks.com/)				|
|Samia Warsame		|[Zane Networks] (https://www.zanenetworks.com/)				|
|Matt Bishop		|[Open City Labs] (https://www.opencitylabs.com/wordpress/)			|
|Brian Handspicker	|[Open City Labs] (https://www.opencitylabs.com/wordpress/)			|
|HL7 HSS WG Members	|[HL7 Human and Social Services Work Group] (hsswg@lists.hl7.org)		|									
|Mohammad Jafari		|[Co-Chair, HL7 HSS Work Group]							|
|Christopher Shawn	|[Co-Chair, HL7 HSS Work Group]							|
|Ioana Singureanu		|[U.S. Department Veterans Affairs]							|
|Hector Beltran		|[Niche Aim Technologies] (www.https://www.https://nicheaim.com/)		|
|Juan Llera			|[Niche Aim Technologies] (www.https://www.https://nicheaim.com/)		|
|Oscar Mendoza		|[Niche Aim Technologies] (www.https://www.https://nicheaim.com/)		|
|Aadli Abdul-Kareem 	|[Electronic Health Network, Inc.] (www.https://www.ehnusa.com/)		|
|Bob Kreha			|[Brightstreet Group] (www.brightstreetgroup.com/)				|
|Pete Richardson		|[Brightstreet Group] (www.brightstreetgroup.com/)				|
|Sheljina Ibrahim		|[Elevance Health] (https://www.elevancehealth.com/)				|
|Shailaja Madla		|[Elevance Health] (https://www.elevancehealth.com/)				|
|Evelyn Gallegos		|[EMI Advisors, Inc.] (https://www.emiadvisors.net/)				|
|Gabriela Gonzalez	|[EMI Advisors, Inc.] (https://www.emiadvisors.net/)				|
|Demri Toop Henderson 	|[EMI Advisors, Inc.] (https://www.emiadvisors.net/)				|
|Himali Saitwal 		|[EMI Advisors, Inc.] (https://www.emiadvisors.net/)				|
|Teresa Gerard		|[Guardian Group, LLC, National Nested Networks]				|


#### Cross Version Analysis
{% include cross-version-analysis.xhtml %}
#### Dependency Table
{% include dependency-table.xhtml %}
#### Globals Table
{% include globals-table.xhtml %}
#### IP Statements
{% include ip-statements.xhtml %}