Alias: $211HSIS = http://211hsis.org
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
Description: "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 Human Services Indexing System, except codes included in Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-category
* ^compose.include.system = http://211hsis.org
* ^experimental = false
* ^compose.include.concept.display = "This value set represents codes found in Level 2 of the 211 Human Services Indexing System, except for codes descending from Level 1 (Y Target Populations terms that are modifiers for human services, not categories of services themselves)"
* #BD "Food" from system $211HSIS
* #BH "Housing/Shelter" from system $211HSIS
* #BM "Material Goods" from system $211HSIS
* #BT "Transportation" from system $211HSIS
* #BV "Utilities" from system $211HSIS
// * #DD "Consumer Assistance and Protection" from system $211HSIS
// * #DF "Consumer Regulation" from system $211HSIS
// * #DM "Money Management" from system $211HSIS
// * #DT "Tax Organizations and Services" from system $211HSIS
// * #FC "Courts" from system $211HSIS
// * #FF "Criminal Correctional System" from system $211HSIS
// * #FJ "Judicial Services" from system $211HSIS
// * #FL "Law Enforcement Agencies" from system $211HSIS
// * #FN "Law Enforcement Services" from system $211HSIS
// * #FP "Legal Assistance Modalities" from system $211HSIS
// * #FS "Legal Expense Insurance" from system $211HSIS
// * #FT "Legal Services" from system $211HSIS
// * #FV "Legal Services Organizations" from system $211HSIS
// * #HD "Educational Institutions/Schools" from system $211HSIS
// * #HH "Educational Programs" from system $211HSIS
// * #HL "Educational Support Services" from system $211HSIS
// * #HP "Postsecondary Instructional Programs" from system $211HSIS
// * #JD "Environmental Protection and Improvement" from system $211HSIS
// * #JP "Public Health" from system $211HSIS
// * #JR "Public Safety" from system $211HSIS
// * #LD "Emergency Medical Care" from system $211HSIS
// * #LE "General Medical Care" from system $211HSIS
// * #LF "Health Screening/Diagnostic Services" from system $211HSIS
// * #LH "Health Supportive Services" from system $211HSIS
// * #LJ "Human Reproduction" from system $211HSIS
// * #LL "Inpatient Health Facilities" from system $211HSIS
// * #LM "Medical Laboratories" from system $211HSIS
// * #LN "Outpatient Health Facilities" from system $211HSIS
// * #LR "Rehabilitation/Habilitation Services" from system $211HSIS
// * #LT "Specialized Treatment and Prevention" from system $211HSIS
// * #LV "Specialty Medicine" from system $211HSIS
// * #ND "Employment" from system $211HSIS
// * #NL "Public Assistance Programs" from system $211HSIS
// * #NS "Social Insurance Programs" from system $211HSIS
// * #NT "Temporary Financial Assistance" from system $211HSIS
// * #PB "Death Certification/Burial Arrangements" from system $211HSIS
// * #PD "Domestic Animal Services" from system $211HSIS
// * #PH "Individual and Family Support Services" from system $211HSIS
// * #PL "Leisure Activities/Recreation" from system $211HSIS
// * #PN "Mutual Support" from system $211HSIS
// * #PS "Social Development and Enrichment" from system $211HSIS
// * #PV "Spiritual Enrichment" from system $211HSIS
// * #PW "Volunteer Development" from system $211HSIS
// * #PX "Volunteer Opportunities" from system $211HSIS
// * #RD "Counseling Approaches" from system $211HSIS
// * #RF "Counseling Settings" from system $211HSIS
// * #RM "Mental Health Care Facilities" from system $211HSIS
// * #RP "Mental Health Assessment and Treatment" from system $211HSIS
// * #RR "Mental Health Support Services" from system $211HSIS
// * #RX "Substance Use Disorder Services" from system $211HSIS
// * #TA "Arts and Culture" from system $211HSIS
// * #TB "Community Economic Development and Finance" from system $211HSIS
// * #TC "Community Facilities/Centers" from system $211HSIS
// * #TD "Community Groups and Government/Administrative Offices" from system $211HSIS
// * #TE "Community Planning and Public Works" from system $211HSIS
// * #TF "Community Recognition" from system $211HSIS
// * #TH "Disaster Services" from system $211HSIS
// * #TI "Donor Services" from system $211HSIS
// * #TJ "Information Services" from system $211HSIS
// * #TL "International Affairs" from system $211HSIS
// * #TM "Military Service" from system $211HSIS
// * #TN "Occupational/Professional Associations" from system $211HSIS
// * #TO "Organizational Development and Management Delivery Methods" from system $211HSIS
// * #TP "Organizational Development and Management Services" from system $211HSIS
// * #TQ "Political Organization and Participation" from system $211HSIS
// * #TR "Research" from system $211HSIS


// Example value set illustrating the classification of human services by type
ValueSet: HumanServiceType
Id: human-services-types
Title: "Human Services Type Value Set"
Description: "This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 Human Services Indexing System, except codes descending from Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-types
* ^compose.include.system = http://211hsis.org
* ^experimental = false
* ^compose.include.concept.display = "This value set represents codes descending from Levels 3-6 of the 211 Human Services Indexing System, except codes descending from Level 1 (Y - Target Populations terms that are modifiers for human services, not categories of services themselves)"

// * #BD-1800 "Emergency Food" from system $211HSIS
// * #BD-1800.1000 "Brown Bag Food Programs" from system $211HSIS
// * #BD-1800.2000 "Food Pantries" from system $211HSIS
// * #BD-1800.2000-620 "Occasional Emergency Food Assistance" from system $211HSIS
// * #BD-1800.2000-640 "Ongoing Emergency Food Assistance" from system $211HSIS
// * #FT-2700.0500 "Advance Medical Directives" from system $211HSIS
// * #FT-2700.0500-200 "Durable Power of Attorney for Health Care" from system $211HSIS
// * #FT-2700.0500-210 "Durable Power of Attorney for Mental Health Care" from system $211HSIS
// * #FT-2700.0500-450 "Living Wills" from system $211HSIS
// * #LH-0600.5000-970 "Wheelchairs/Wheeled Mobility" from system $211HSIS
// * #LH-0600.5000-970.10 "Beach Wheelchairs" from system $211HSIS
// * #LH-0600.5000-970.50 "Manual Wheelchairs" from system $211HSIS
// * #LH-0600.5000-970.60 "Powered Wheelchairs" from system $211HSIS
// * #LH-0600.5000-970.80 "Sports Wheelchairs" from system $211HSIS
