Alias: $LA211Taxonomy = http://211hsis.org
// Example value set illustrating the high level categories by which Human Services Directories can be queried
// The "include" in this rule is optional
// http://211hsis.org can be replaced with an alias

// Extension: RulesText
// Id:  rules-text
// Title: "Value Set Rules Text"
// Description: "An expression that provides an alternative definition of the content of the value set in some form that is not computable - e.g., instructinos that could only be followed by a human."
// * value[x] only CodeableConcept

ValueSet: HumanServiceCategory
Id: human-services-category
Title: "Human Services Category Value Set"
Description: "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 LA Taxonomy of Human Services, except codes included in Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-category
* ^compose.include.system = http://211hsis.org
* ^experimental = false
// * ^compose.include.concept.code = 
* ^compose.include.concept.display = "This value set represents codes found in Level 2 of the 211 LA Taxonomy of Human Services, except for codes descending from Level 1 (Y Target Populations terms that are modifiers for human services, not categories of services themselves)"
* #BD "Food" from system $LA211Taxonomy
* #BH "Housing/Shelter" from system $LA211Taxonomy
* #BM "Material Goods" from system $LA211Taxonomy
* #BT "Transportation" from system $LA211Taxonomy
* #BV "Utilities" from system $LA211Taxonomy
* #DD "Consumer Assistance and Protection" from system $LA211Taxonomy
* #DF "Consumer Regulation" from system $LA211Taxonomy
* #DM "Money Management" from system $LA211Taxonomy
* #DT "Tax Organizations and Services" from system $LA211Taxonomy
* #FC "Courts" from system $LA211Taxonomy
* #FF "Criminal Correctional System" from system $LA211Taxonomy
* #FJ "Judicial Services" from system $LA211Taxonomy
* #FL "Law Enforcement Agencies" from system $LA211Taxonomy
* #FN "Law Enforcement Services" from system $LA211Taxonomy
* #FP "Legal Assistance Modalities" from system $LA211Taxonomy
* #FS "Legal Expense Insurance" from system $LA211Taxonomy
* #FT "Legal Services" from system $LA211Taxonomy
* #FV "Legal Services Organizations" from system $LA211Taxonomy
* #HD "Educational Institutions/Schools" from system $LA211Taxonomy
* #HH "Educational Programs" from system $LA211Taxonomy
* #HL "Educational Support Services" from system $LA211Taxonomy
* #HP "Postsecondary Instructional Programs" from system $LA211Taxonomy
* #JD "Environmental Protection and Improvement" from system $LA211Taxonomy
* #JP "Public Health" from system $LA211Taxonomy
* #JR "Public Safety" from system $LA211Taxonomy
* #LD "Emergency Medical Care" from system $LA211Taxonomy
* #LE "General Medical Care" from system $LA211Taxonomy
* #LF "Health Screening/Diagnostic Services" from system $LA211Taxonomy
* #LH "Health Supportive Services" from system $LA211Taxonomy
* #LJ "Human Reproduction" from system $LA211Taxonomy
* #LL "Inpatient Health Facilities" from system $LA211Taxonomy
* #LM "Medical Laboratories" from system $LA211Taxonomy
* #LN "Outpatient Health Facilities" from system $LA211Taxonomy
* #LR "Rehabilitation/Habilitation Services" from system $LA211Taxonomy
* #LT "Specialized Treatment and Prevention" from system $LA211Taxonomy
* #LV "Specialty Medicine" from system $LA211Taxonomy
* #ND "Employment" from system $LA211Taxonomy
* #NL "Public Assistance Programs" from system $LA211Taxonomy
* #NS "Social Insurance Programs" from system $LA211Taxonomy
* #NT "Temporary Financial Assistance" from system $LA211Taxonomy
* #PB "Death Certification/Burial Arrangements" from system $LA211Taxonomy
* #PD "Domestic Animal Services" from system $LA211Taxonomy
* #PH "Individual and Family Support Services" from system $LA211Taxonomy
* #PL "Leisure Activities/Recreation" from system $LA211Taxonomy
* #PN "Mutual Support" from system $LA211Taxonomy
* #PS "Social Development and Enrichment" from system $LA211Taxonomy
* #PV "Spiritual Enrichment" from system $LA211Taxonomy
* #PW "Volunteer Development" from system $LA211Taxonomy
* #PX "Volunteer Opportunities" from system $LA211Taxonomy
* #RD "Counseling Approaches" from system $LA211Taxonomy
* #RF "Counseling Settings" from system $LA211Taxonomy
* #RM "Mental Health Care Facilities" from system $LA211Taxonomy
* #RP "Mental Health Assessment and Treatment" from system $LA211Taxonomy
* #RR "Mental Health Support Services" from system $LA211Taxonomy
* #RX "Substance Use Disorder Services" from system $LA211Taxonomy
* #TA "Arts and Culture" from system $LA211Taxonomy
* #TB "Community Economic Development and Finance" from system $LA211Taxonomy
* #TC "Community Facilities/Centers" from system $LA211Taxonomy
* #TD "Community Groups and Government/Administrative Offices" from system $LA211Taxonomy
* #TE "Community Planning and Public Works" from system $LA211Taxonomy
* #TF "Community Recognition" from system $LA211Taxonomy
* #TH "Disaster Services" from system $LA211Taxonomy
* #TI "Donor Services" from system $LA211Taxonomy
* #TJ "Information Services" from system $LA211Taxonomy
* #TL "International Affairs" from system $LA211Taxonomy
* #TM "Military Service" from system $LA211Taxonomy
* #TN "Occupational/Professional Associations" from system $LA211Taxonomy
* #TO "Organizational Development and Management Delivery Methods" from system $LA211Taxonomy
* #TP "Organizational Development and Management Services" from system $LA211Taxonomy
* #TQ "Political Organization and Participation" from system $LA211Taxonomy
* #TR "Research" from system $LA211Taxonomy

// * http://hl7.org/fhir/StructureDefinition/valueset-rules-text
// * include codes from system $LA211Taxonomy where concept is-a #Level2
// * exclude codes from system $LA211Taxonomy where concept is-a #Level1Y-TargetPopulations

// Example value set illustrating the classification of human services by type
ValueSet: HumanServiceType
Id: human-services-types
Title: "Human Services Type Value Set"
Description: "This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 LA Taxonomy of Human Services, except codes descending from Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-types
* ^compose.include.system = http://211hsis.org
* ^experimental = false
* ^compose.include.concept.display = "This value set represents codes descending from Levels 3-6 of the 211 LA Taxonomy of Human Services, except codes descending from Level 1 (Y - Target Populations terms that are modifiers for human services, not categories of services themselves)"

* #BD-1800 "Emergency Food" from system $LA211Taxonomy
* #BD-1800.1000 "Brown Bag Food Programs" from system $LA211Taxonomy
* #BD-1800.2000 "Food Pantries" from system $LA211Taxonomy
* #BD-1800.2000-620 "Occasional Emergency Food Assistance" from system $LA211Taxonomy
* #BD-1800.2000-640 "Ongoing Emergency Food Assistance" from system $LA211Taxonomy
* #FT-2700.0500 "Advance Medical Directives" from system $LA211Taxonomy
* #FT-2700.0500-200 "Durable Power of Attorney for Health Care" from system $LA211Taxonomy
* #FT-2700.0500-210 "Durable Power of Attorney for Mental Health Care" from system $LA211Taxonomy
* #FT-2700.0500-450 "Living Wills" from system $LA211Taxonomy
* #LH-0600.5000-970 "Wheelchairs/Wheeled Mobility" from system $LA211Taxonomy
* #LH-0600.5000-970.10 "Beach Wheelchairs" from system $LA211Taxonomy
* #LH-0600.5000-970.50 "Manual Wheelchairs" from system $LA211Taxonomy
* #LH-0600.5000-970.60 "Powered Wheelchairs" from system $LA211Taxonomy
* #LH-0600.5000-970.80 "Sports Wheelchairs" from system $LA211Taxonomy
// * include codes from system $LA211Taxonomy where concept is-a #Level3-6
// * exclude codes from system $LA211Taxonomy where concept is-a #Level1Y-TargetPopulations