# FHIR Human Services Directory

## Overview

The FHIR Implementation Guide (IG) for Human Service Resource and Provider Directories is a US Realm standard that provides "companion" or "additional content" profiles to the [DaVinci PDEX Plan-Net Provider Directory Implementation Guide (PDEX)](http://hl7.org/fhir/us/davinci-pdex-plan-net/). This approach is intended to facilitate the integration of community-based organization (CBO) social care services directories by healthcare providers and payer organizations into their workflows, that have already implemented the DaVinci PDEX Provider Directory Implementation Guide to meet the CMS Interoperability and Patient Access Final Rule.
 
This implementation guide re-uses three profiles from the PDEX IG: Organization, HealthcareService, and Location, and applies an analysis of the [Open Referral Human Services Data Specification (HSDS)](https://docs.openreferral.org/en/latest/hsds/) [version 2.0.1](https://github.com/openreferral/specification/releases/tag/2.0.1), a recognized US & International standard.

The HSDS describes information collected by human and social service organizations – descriptions of services, the institutions that provide those services, where services can be accessed, and how services can be accessed, and allows directory information to be published in a machine-readable data format that can be universally understood by disparate entities using the HSDS associated APIs: ([HSDA](https://docs.openreferral.org/en/latest/hsda/#hsda)). In addition, HSDS has been [endorsed](https://openreferral.org/airs-recommends-open-referral-for-resource-database-interoperability/) by the [Alliance of Information and Referral Systems](https://www.airs.org/i4a/pages/index.cfm?pageid=3581), an international association of I&R service providers, a driving force behind the delivery of quality I&R services, and a primary source for standards, program accreditation and practitioner certification for the I&R sector. 

The Human Service Resource and Provider Directory IG is focused on requirements of real-world implementers of social services directories and provides guidance to FHIR-enabled applications used by healthcare providers, payers, and consumers wanting to search social and human services directories to find the community-based resources that could help meet the unmet social needs of patients, consumers, and care givers. HSDS allows social service directory information to be published in a machine-readable format and has been adopted by a wide range of social care coordination vendors. As more healthcare systems seek to improve care coordination and health outcomes for patients and clients across the health and social care sectors, an interoperable, FHIR-based directory of community-based social services will help providers develop care coordination workflows with available social service agencies using FHIR-enabled EHR-systems.

This guide can also be adapted internationally through changes to the terminology bindings currently constrained to those used in the US realm, as the HSDS standard reflects international, as well as US requirements.


## 	Scope for this release

Use Cases
This STU1 release of the Implementation Guide focuses on read-only queries covering a select scope of use cases that require access to a human and social services directory to complete their end-to-end workflow. These include matching patients/clients with services including within scenarios such as:
- Closed-loop referrals (e.g., a healthcare provider and/or other care/case management provider seeking to refer a patient to community-based services
- Community-Based Organization/social navigators (re-)directing incoming referral/requests to another other CBO best suited to a patient/client's situation
- Consumers/clients/care givers searching for help in their area using a mobile application.

**Note:** Eligibility for services is not currently in scope, though may be added to a future release.

Figure 1 depicts the current scope for this release of the implementation guide (IG). The IG defines the API that exposes a community-based organization’s database for access by a consumer or provider application (EHR-System, consumer mobile app). This is a query-only API (GET) and does not support PUT or POST.

<img src="temp Read Only pic.png" alt="Read Only Scope*" width="100%" />
*Figure 1: Read Only Scope*


##	Introduction

Information and Referral (I&R) is the art, science, and practice of bringing people and services together. To accomplish this goal, I&R oganizations maintain resource databases that contain information about services for specialized needs (e.g., aging population, respite services, childcare, special education, etc.) or offer comprehensive information about a broad range of health and human services (e.g., 2-1-1 call centers). I&Rs maintain directories of vital information about concrete aspects of services and programs, such as program names and addresses, hours of operation, eligibility requirements, and fees and share this information through various channels.

These databases contain information about community, social, health, government programs, and services and are kept up to date by trained Database Curators. People may seek help by making telephone contact, online searches, and during in-person visits to community centers.
Some agencies provide information about the human services available within a geographic area; while others are specialized, providing in-depth information about resources for specific population groups such as older adults, children, victims of violence, military personnel and their families, or people with mental health issues.

The Human Services Data Specification (HSDS) defines the content that provides a minimum data set for the Information and Referral (I&R) applications and specialized service directory applications used to discover these services. The HSDS specification provides an opportunity to convey vital public service information using an open API approach.

An API is an interface that allows one computer program or system to access the features and data of a different program or system. This interface defines how data is formatted and the types of supported interactions, such as how data can be searched. Data must be formatted in a common manner to be successfully exchanged and understood. APIs can be simple or complex, with different data structures for a wide array of interactions.

Many desktop and mobile applications use APIs to retrieve, store, and update data. Each API can define the standards and protocols that allow an external application to access its system’s data. The world of I&R has no shortage of APIs designed to convey human services directory information. Using a standard FHIR API that has been mapped to the HSDS content will facilitate query access by multiple Community Resource Referral Platforms to 211 Statewide Social Service Resource Directories.

The FHIR Implementation Guide for Human and Social Services Resource Directories defines a FHIR interface to a directory of information about services provided by community-based organizations at the locations in which they operate. Publication of this data through a standard FHIR-based API will enable third parties to develop applications used by healthcare providers and consumers, to query for community-based services for access by patients and clients to help address circumstances that make it difficult to live healthy lives, and unmet social needs. 


##	 Background
Social determinants of health (SDOH) are the conditions in the environment where people are born, live, learn, work, play, worship, and age that affect a wide range of health, functioning, and quality-of-life outcomes and risks.

Community services that address food insecurity and transportation issues, manage chronic disease, support employment and economic independence, reduce social isolation, and address other non-medical risk factors have been demonstrated to improve health outcomes and reduce the cost of care. But information about the social services available to people in need is complex and ever-changing. In any given community, multiple “resource directories” might be available to people seeking assistance, whether health care providers looking for appropriate community-based services to refer patients, or clients searching the directory when seeking help directly.

Many states have invested in resource directory and referral management systems to help streamline and improve their ability to connect older adults and people with disabilities to long-term services and support. Provider- and plan-specific referral platforms often cannot leverage existing networks of services that can help address unmet social needs because they are unable to access their directories. Information Technology developers implementing innovative community platforms often do not incorporate necessary interoperability standards into their products, thereby creating one-off approaches, resulting in siloed communities, inefficiencies for managing social care referrals, and diminishing opportunities to improve outcomes by providing access to the appropriate social services that are available in the required location.

Past and current efforts to offer a standards-based approach to directories that support the human and social services domain have yet to be published. In response, in late 2021, the Administration for Community Living (ACL) at the U.S. Department of Health and Human Services (HHS) announced the Social Care Referrals Challenge competition for state and community leaders in the aging and disability network, health care systems, health plans, along with health IT vendors to improve care coordination by developing and/or optimizing interoperable and scalable technology approaches to the secure sharing of standardized data on social determinants and person-centered plans through the use of open resource directories that interoperate between health care provider’s electronic health record-systems (EHR) and community-based organizations.

The ACL Social Care Referrals Challenge searched for solutions to an interoperable social services directory that could be used by the varying states’ resource directory and referral management systems and platforms. The Challenge participants will develop prototypes for implementable solutions to help track social service referral patterns that can demonstrate the impact of social services on health-related outcomes over time.

## Relation to US Core and other IGs

The CMS Interoperability and Patient Access Rule (CMS-9115-F) specified FHIR technical standards and implementation guides that support development and testing of FHIR APIs to foster interoperability. CMS identified technical standards for Provider Directories and recommended the DaVinci PDEX Plan Net Provider Directory Implementation Guide. As healthcare providers and payers seek to incorporate social determinants of health screening assessments and referrals to social care agencies into their care management processes, we chose an approach that is intended to minimize the integration of a social services directory into their workflow practices and implementation environment by extending the functionality of a recognized standard for healthcare provider directories.

<img src="HSDS.png" width="100%" />
*Figure 2: Relationship between IGs*

- FHIR US Core addresses USCDI and it is designated by the HL7 US Realm Steering Committee as the “base specification” for any US-realm FHIR API.
- PDEX Plan Net reuses “US Core” 
- The FHIR Human Services and Resource Directory FHIR IG reuses “Plan Net” and constrains/limits it to the data elements, terminology, and search capabilities required to support human and social service providers and resource to support a set of directories that uses a FHIR-based standard API, rather than a single directory.

## Credits
This IG was developed by FEISystems under the direction of the authors using [FHIR Shorthand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI toolkit](https://fshschool.org/docs/sushi/) (an acronym for "SUSHI Unshortens SHorthand Inputs"), a free, open source toolchain from the MITRE Corporation. Generous assistance was provided by the Department of Health and Human Services Administration for Children and Families (ACF); Sean Muir; Greg Bloom, OpenReferral; Open Data Services; HL7 Health & Human Services Work Group members; and …

## Authors
The project team would like to thank leadership and colleagues for their support in the development of this Implementation Guide:

