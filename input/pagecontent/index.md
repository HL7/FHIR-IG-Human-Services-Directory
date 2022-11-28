# FHIR Human Services Directory

## Overview

The FHIR Implementation Guide (IG) for Human Services Directories is a US Realm standard that offers three “new content” profiles to the [DaVinci PDEX Plan-Net Provider Directory Implementation Guide (PDEX)](http://hl7.org/fhir/us/davinci-pdex-plan-net/). This guide re-uses three PDEX Provider Directory profiles: Organization, HealthcareService, and Location, and constrains those profiles using pertinent vocabulary bindings that support searching directories of community-based organization (CBO) human and social services directories for servies that can help mitigate the unmet social needs of patients, consumers, and care givers.

This approach is intended to encourage adoption of this standard by facilitating the integration of these directories into healthcare provider and payer organization care management workflows by those who have already implemented the DaVinci PDEX Provider Directory Implementation Guide in order to meet the CMS Interoperability and Patient Access Final Rule. This approach can support clients using consumer FHIR-enabled applications to locate appropriate services in a specified coverage area from CBO-directories as well.

The primary source of requirements for the FHIR Human Services Directory IG was analysis of the [Open Referral Human Services Data Specification (HSDS)](https://docs.openreferral.org/en/v2.0.1/) [version 2.0.1](https://github.com/openreferral/specification/releases/tag/2.0.1). HSDS is a recognized US & International standard that describes information collected by human and social service organizations – the descriptions of services, institutions that provide services, where and how services can be accessed. The HSDS structure allows directory information to be published in a machine-readable data format that can be universally understood by disparate entities that use HSDS and its associated APIs: [Human Service Data API Suite HSDA](https://docs.openreferral.org/en/v2.0.1/hsda/). HSDS has been adopted by a wide range of social care coordination vendors and has been endorsed by the [Alliance of Information and Referral Systems (AIRS)](https://www.airs.org/i4a/pages/index.cfm?pageid=3581). AIRS is an international association of I&R service providers, and a primary source for standards, program accreditation and practitioner certification for the I&R sector. 

By leveraging analysis of HSDS, the FHIR Human Services Directory IG provides a standard that reflects real-world requirements of users of social services directories. A primary purpose for this IG is to provide mapping guidance between HSDS-structured directories and FHIR so that implementers who are familiar with directory data in HSDS format, do not have to be concerned with mapping local directory data to FHIR to allow FHIR-based applications access to social and human services directories of community-based resources. 

As more healthcare systems begin using FHIR-enabled EHR-systems, interoperable, FHIR-based directories of community-based social services can help providers initiate social care referrals with available social service agencies and improve care coordination and health outcomes for patients and clients across the health care continuum.

Because the HSDS standard reflects international, as well as US requirements, this guide could be adapted internationally through changes to the terminology bindings that are currently constrained in this IG to those used in the US realm.

Since this project was initiated in May 2022, the HSDS specification has under gone revision, in part as the result of the mapping analysis based on HSDS v.2.0.1. To ensure continued alignment between HSDS and FHIR, once the new version of HSDS (3.0) has been published, this project will apply those updates to a future, balloted version of this Implementation Guide.

### 	Scope for this release

**Use Cases**

This STU1 release of the Implementation Guide focuses on read-only queries covering a select scope of use cases that require access to a human and social services directory to complete their end-to-end workflow. This includes searching for the human services needed for patients in some of the following scenarios:
- Closed-loop referrals (e.g., a healthcare provider and/or other care/case management provider seeking to refer a patient to community-based services
- Community-Based Organization/social navigators (re-)directing incoming referral/requests to another other CBO best suited to a patient/client's situation
- Consumers/clients/care givers searching for help in their area using a mobile application.

**Out of Scope for this Release:** 

- Eligibility for services is currently out of scope, though may be added to a future release.

**Figure 1** depicts the current scope for this release of the implementation guide (IG). The IG defines the API that exposes a community-based organization’s database for access by a consumer or provider application (EHR-System, consumer mobile app). This is a query-only API (GET) and does not support PUT or POST.

<img src="ReadOnly.png" alt="*Read Only Scope*" width="100%" />
*Figure 1: Read Only Scope*


###	Introduction

Information and Referral (I&R) is the art, science, and practice of bringing people and services together. To accomplish this goal, I&R organizations maintain resource databases that contain information about services for specialized needs (e.g., aging population, respite services, childcare, special education, etc.) or offer comprehensive information about a broad range of health and human services (e.g., 2-1-1 call centers). I&Rs maintain directories of vital information about concrete aspects of services and programs, such as program names and addresses, hours of operation, eligibility requirements, and fees and share this information through various channels.

These databases contain information about community, social, health, government programs, and services and are kept up to date by trained Database Curators. People may seek help by making telephone contact, online searches, and during in-person visits to community centers. Some agencies provide information about the human services available within a geographic area; while others are specialized, providing in-depth information about resources for specific population groups such as older adults, children, victims of violence, military personnel and their families, or people with mental health issues.

The Human Services Data Specification (HSDS) defines the content that provides a minimum data set for the Information and Referral (I&R) applications and specialized service directory applications used to discover these services. The HSDS specification provides an opportunity to convey vital public service information using an open API approach.

An API is an interface that allows one computer program or system to access the features and data of a different program or system. This interface defines how data is formatted and the types of supported interactions, such as how data can be searched. Data must be formatted and often codified in a common manner to be successfully exchanged and understood. APIs can be simple or complex, with different data structures for a wide array of interactions.

Many desktop and mobile applications use APIs to retrieve, store, and update data. Each API can define the standards and protocols that allow an external application to access its system’s data. The world of I&R has no shortage of APIs designed to convey human services directory information. Using a standard FHIR API that has been mapped to HSDS-formatted content will facilitate query access by multiple Community Resource Referral Platforms to 211 Statewide Social Service Directories.

The FHIR Implementation Guide for Human and Social Services Resource Directories defines a FHIR interface to directories of social services information provided by community-based organizations at locations in which they operate. Publication of these data through standard FHIR-based APIs enables third parties to develop applications that can be used by healthcare providers, payers, and consumers to query directories of community-based services to help address the circumstances that make it difficult to live healthy lives, and unmet social needs.

###	 Background
Social determinants of health (SDOH) are the conditions in the environment where people are born, live, learn, work, play, worship, and age that affect a wide range of health, functioning, and quality-of-life outcomes and risks.

Community services that address food insecurity and transportation issues, manage chronic disease, support employment and economic independence, reduce social isolation, and address other non-medical risk factors have been demonstrated to improve health outcomes and reduce the cost of care. But information about the social services available to people in need is complex and ever-changing. In any given community, multiple “resource directories” might be available to people seeking assistance, whether health care providers looking for appropriate community-based services to refer patients, or clients searching the directory when seeking help directly.

Many states have invested in resource directory and referral management systems to help streamline and improve their ability to connect older adults and people with disabilities to long-term services and support. Provider- and plan-specific referral platforms often cannot leverage existing networks of services that can help address unmet social needs because they are unable to access their directories. Information Technology developers implementing innovative community platforms often do not incorporate necessary interoperability standards into their products, thereby creating one-off approaches, resulting in siloed communities, inefficiencies for managing social care referrals, and diminishing opportunities to improve outcomes by providing access to the appropriate social services that are available in the required location.

Past and current efforts to offer a standards-based approach to directories that support the human and social services domain have yet to be published. In response, in late 2021, the Administration for Community Living (ACL) at the U.S. Department of Health and Human Services (HHS) announced the Social Care Referrals Challenge competition for state and community leaders in the aging and disability network, health care systems, health plans, along with health IT vendors to improve care coordination by developing and/or optimizing interoperable and scalable technology approaches to the secure sharing of standardized data on social determinants and person-centered plans through the use of open resource directories that interoperate between health care provider’s electronic health record-systems (EHR) and community-based organizations.

The ACL Social Care Referrals Challenge searched for solutions to an interoperable social services directory that could be used by the varying states’ resource directory and referral management systems and platforms. The Challenge participants will develop prototypes for implementable solutions to help track social service referral patterns that can demonstrate the impact of social services on health-related outcomes over time.

### Relation to US Core and other IGs

The CMS Interoperability and Patient Access Rule (CMS-9115-F) specified FHIR technical standards and implementation guides that support development and testing of FHIR APIs to foster interoperability. CMS identified technical standards for Provider Directories and recommended the DaVinci PDEX Plan Net Provider Directory Implementation Guide. As healthcare providers and payers seek to incorporate social determinants of health screening assessments and referrals to social care agencies into their care management processes, we chose an approach that is intended to minimize the integration of a social services directory into their workflow practices and implementation environment by extending the functionality of a recognized standard for healthcare provider directories.

<img src="IG Hierarchy.png" width="100%" />
*Figure 2: Relationship between IGs*

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
This IG was developed by FEISystems under the direction of the authors using [FHIR Shorthand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI toolkit](https://fshschool.org/docs/sushi/) (an acronym for "SUSHI Unshortens SHorthand Inputs"), a free, open source toolchain from the MITRE Corporation. 

Generous assistance in testing this Implementation Guide was provided by the Departments of Health and Human Services Administration for Commuity Living (ACL) and the Administration for Children and Families (ACF) as well as other organizations and individuals as follows:

|**Name**			|**Organization**										|
|Greg Bloom			|[Open Referral] (https://docs.openreferral.org/)				|
|David Raznick		|[Open Data Services/Open Referral] (https://opendataservices.coop/)	|
|Kelly Cronin		|[Administration for Communnity Living] (https://acl.gov/)			|
|Ami Patel			|[Administration for Communnity Living] (https://acl.gov/)			|
|Joseph Lugo		|[Administration for Communnity Living] (https://acl.gov/)			|
|Gilbert Thompson		|[Administration for Communnity Living] (https://acl.gov/)			|
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
|HL7 HSS WG Members	|[HL7 HSS Listserv (hsswg@lists.hl7.org)						|									
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
|Teresa Gerard		|[Guardgroup.net]										|
