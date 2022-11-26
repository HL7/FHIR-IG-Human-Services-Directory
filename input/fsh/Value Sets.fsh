Alias: $LA211TaxonomyHumanServicesCS = http://211taxonomy.org
// Example value set illustrating the high level categories by which Human Services Directories can be queried
// The "include" in this rule is optional
// http://211taxonomy.org can be replaced with an alias

// Extension: RulesText
// Id:  rules-text
// Title: "Value Set Rules Text"
// Description: "An expression that provides an alternative definition of the content of the value set in some form that is not computable - e.g., instructinos that could only be followed by a human."
// * value[x] only CodeableConcept

ValueSet: HumanServiceCategoryVS
Id: human-services-category
Title: "Human Services Category Value Set"
Description: "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 LA Taxonomy of Human Services, except codes included in Level 1 (Y - Target Populations)."
* ^compose.include.system = http://211taxonomy.org
* ^experimental = false
// * ^compose.include.concept.code = 
* ^compose.include.concept.display = "This value set represents codes found in Level 2 of the 211 LA Taxonomy of Human Services, except for codes descending from Level 1 (Y Target Populations terms that are modifiers for human services, not categories of services themselves)"
* #BD "Food" from system $LA211TaxonomyHumanServicesCS
* #BH "Housing/Shelter" from system $LA211TaxonomyHumanServicesCS
* #BM "Material Goods" from system $LA211TaxonomyHumanServicesCS
* #BT "Transportation" from system $LA211TaxonomyHumanServicesCS
* #BV "Utilities" from system $LA211TaxonomyHumanServicesCS
* #DD "Consumer Assistance and Protection" from system $LA211TaxonomyHumanServicesCS
* #DF "Consumer Regulation" from system $LA211TaxonomyHumanServicesCS
* #DM "Money Management" from system $LA211TaxonomyHumanServicesCS
* #DT "Tax Organizations and Services" from system $LA211TaxonomyHumanServicesCS
* #FC "Courts" from system $LA211TaxonomyHumanServicesCS
* #FF "Criminal Correctional System" from system $LA211TaxonomyHumanServicesCS
* #FJ "Judicial Services" from system $LA211TaxonomyHumanServicesCS
* #FL "Law Enforcement Agencies" from system $LA211TaxonomyHumanServicesCS
* #FN "Law Enforcement Services" from system $LA211TaxonomyHumanServicesCS
* #FP "Legal Assistance Modalities" from system $LA211TaxonomyHumanServicesCS
* #FS "Legal Expense Insurance" from system $LA211TaxonomyHumanServicesCS
* #FT "Legal Services" from system $LA211TaxonomyHumanServicesCS
* #FV "Legal Services Organizations" from system $LA211TaxonomyHumanServicesCS
* #HD "Educational Institutions/Schools" from system $LA211TaxonomyHumanServicesCS
* #HH "Educational Programs" from system $LA211TaxonomyHumanServicesCS
* #HL "Educational Support Services" from system $LA211TaxonomyHumanServicesCS
* #HP "Postsecondary Instructional Programs" from system $LA211TaxonomyHumanServicesCS
* #JD "Environmental Protection and Improvement" from system $LA211TaxonomyHumanServicesCS
* #JP "Public Health" from system $LA211TaxonomyHumanServicesCS
* #JR "Public Safety" from system $LA211TaxonomyHumanServicesCS
* #LD "Emergency Medical Care" from system $LA211TaxonomyHumanServicesCS
* #LE "General Medical Care" from system $LA211TaxonomyHumanServicesCS
* #LF "Health Screening/Diagnostic Services" from system $LA211TaxonomyHumanServicesCS
* #LH "Health Supportive Services" from system $LA211TaxonomyHumanServicesCS
* #LJ "Human Reproduction" from system $LA211TaxonomyHumanServicesCS
* #LL "Inpatient Health Facilities" from system $LA211TaxonomyHumanServicesCS
* #LM "Medical Laboratories" from system $LA211TaxonomyHumanServicesCS
* #LN "Outpatient Health Facilities" from system $LA211TaxonomyHumanServicesCS
* #LR "Rehabilitation/Habilitation Services" from system $LA211TaxonomyHumanServicesCS
* #LT "Specialized Treatment and Prevention" from system $LA211TaxonomyHumanServicesCS
* #LV "Specialty Medicine" from system $LA211TaxonomyHumanServicesCS
* #ND "Employment" from system $LA211TaxonomyHumanServicesCS
* #NL "Public Assistance Programs" from system $LA211TaxonomyHumanServicesCS
* #NS "Social Insurance Programs" from system $LA211TaxonomyHumanServicesCS
* #NT "Temporary Financial Assistance" from system $LA211TaxonomyHumanServicesCS
* #PB "Death Certification/Burial Arrangements" from system $LA211TaxonomyHumanServicesCS
* #PD "Domestic Animal Services" from system $LA211TaxonomyHumanServicesCS
* #PH "Individual and Family Support Services" from system $LA211TaxonomyHumanServicesCS
* #PL "Leisure Activities/Recreation" from system $LA211TaxonomyHumanServicesCS
* #PN "Mutual Support" from system $LA211TaxonomyHumanServicesCS
* #PS "Social Development and Enrichment" from system $LA211TaxonomyHumanServicesCS
* #PV "Spiritual Enrichment" from system $LA211TaxonomyHumanServicesCS
* #PW "Volunteer Development" from system $LA211TaxonomyHumanServicesCS
* #PX "Volunteer Opportunities" from system $LA211TaxonomyHumanServicesCS
* #RD "Counseling Approaches" from system $LA211TaxonomyHumanServicesCS
* #RF "Counseling Settings" from system $LA211TaxonomyHumanServicesCS
* #RM "Mental Health Care Facilities" from system $LA211TaxonomyHumanServicesCS
* #RP "Mental Health Assessment and Treatment" from system $LA211TaxonomyHumanServicesCS
* #RR "Mental Health Support Services" from system $LA211TaxonomyHumanServicesCS
* #RX "Substance Use Disorder Services" from system $LA211TaxonomyHumanServicesCS
* #TA "Arts and Culture" from system $LA211TaxonomyHumanServicesCS
* #TB "Community Economic Development and Finance" from system $LA211TaxonomyHumanServicesCS
* #TC "Community Facilities/Centers" from system $LA211TaxonomyHumanServicesCS
* #TD "Community Groups and Government/Administrative Offices" from system $LA211TaxonomyHumanServicesCS
* #TE "Community Planning and Public Works" from system $LA211TaxonomyHumanServicesCS
* #TF "Community Recognition" from system $LA211TaxonomyHumanServicesCS
* #TH "Disaster Services" from system $LA211TaxonomyHumanServicesCS
* #TI "Donor Services" from system $LA211TaxonomyHumanServicesCS
* #TJ "Information Services" from system $LA211TaxonomyHumanServicesCS
* #TL "International Affairs" from system $LA211TaxonomyHumanServicesCS
* #TM "Military Service" from system $LA211TaxonomyHumanServicesCS
* #TN "Occupational/Professional Associations" from system $LA211TaxonomyHumanServicesCS
* #TO "Organizational Development and Management Delivery Methods" from system $LA211TaxonomyHumanServicesCS
* #TP "Organizational Development and Management Services" from system $LA211TaxonomyHumanServicesCS
* #TQ "Political Organization and Participation" from system $LA211TaxonomyHumanServicesCS
* #TR "Research" from system $LA211TaxonomyHumanServicesCS

// * http://hl7.org/fhir/StructureDefinition/valueset-rules-text
// * include codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level2
// * exclude codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level1Y-TargetPopulations

// Example value set illustrating the classification of human services by type
ValueSet: HumanServiceTypeVS
Id: human-services-types
Title: "Human Services Type Value Set"
Description: "This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 LA Taxonomy of Human Services, except codes descending from Level 1 (Y - Target Populations)."
* ^compose.include.system = http://211taxonomy.org
* ^experimental = false
* ^compose.include.concept.display = "This value set represents codes descending from Levels 3-6 of the 211 LA Taxonomy of Human Services, except codes descending from Level 1 (Y - Target Populations terms that are modifiers for human services, not categories of services themselves)"

* #BD-1800 "Emergency Food" from system $LA211TaxonomyHumanServicesCS
* #BD-1800.1000 "Brown Bag Food Programs" from system $LA211TaxonomyHumanServicesCS
* #BD-1800.2000 "Food Pantries" from system $LA211TaxonomyHumanServicesCS
* #BD-1800.2000-620 "Occasional Emergency Food Assistance" from system $LA211TaxonomyHumanServicesCS
* #BD-1800.2000-640 "Ongoing Emergency Food Assistance" from system $LA211TaxonomyHumanServicesCS
* #FT-2700.0500 "Advance Medical Directives" from system $LA211TaxonomyHumanServicesCS
* #FT-2700.0500-200 "Durable Power of Attorney for Health Care" from system $LA211TaxonomyHumanServicesCS
* #FT-2700.0500-210 "Durable Power of Attorney for Mental Health Care" from system $LA211TaxonomyHumanServicesCS
* #FT-2700.0500-450 "Living Wills" from system $LA211TaxonomyHumanServicesCS
* #LH-0600.5000-970 "Wheelchairs/Wheeled Mobility" from system $LA211TaxonomyHumanServicesCS
* #LH-0600.5000-970.10 "Beach Wheelchairs" from system $LA211TaxonomyHumanServicesCS
* #LH-0600.5000-970.50 "Manual Wheelchairs" from system $LA211TaxonomyHumanServicesCS
* #LH-0600.5000-970.60 "Powered Wheelchairs" from system $LA211TaxonomyHumanServicesCS
* #LH-0600.5000-970.80 "Sports Wheelchairs" from system $LA211TaxonomyHumanServicesCS
// * include codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level3-6
// * exclude codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level1Y-TargetPopulations