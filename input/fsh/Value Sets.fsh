Alias: $HSIS211 = http://211hsis.org
// Example value set illustrating the high level categories by which Human Services Directories can be queried
// The "include" in this rule is optional
// http://211hsis.org can be replaced with an alias

ValueSet: HumanServiceCategory
Id: human-services-category
Title: "Human Services Category Value Set"
Description: "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 Human Services Indexing System, except codes included in Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-category
* ^compose.include.system = http://211hsis.org
* ^experimental = false
* ^compose.include.concept.display = "This value set represents codes found in Level 2 of the 211 Human Services Indexing System, except for codes descending from Level 1 (Y Target Populations terms that are modifiers for human services, not categories of services themselves)"
* #BD "Food" from system $HSIS211
// * #BH "Housing/Shelter" from system $HSIS211
// * #BM "Material Goods" from system $HSIS211
// * #BT "Transportation" from system $HSIS211
// * #BV "Utilities" from system $HSIS211
// * #DD "Consumer Assistance and Protection" from system $HSIS211
// * #DF "Consumer Regulation" from system $HSIS211
// * #DM "Money Management" from system $HSIS211
// * #DT "Tax Organizations and Services" from system $HSIS211
// * #FC "Courts" from system $HSIS211
// * #FF "Criminal Correctional System" from system $HSIS211
// * #FJ "Judicial Services" from system $HSIS211
// * #FL "Law Enforcement Agencies" from system $HSIS211
// * #FN "Law Enforcement Services" from system $HSIS211
// * #FP "Legal Assistance Modalities" from system $HSIS211
// * #FS "Legal Expense Insurance" from system $HSIS211
// * #FT "Legal Services" from system $HSIS211
// * #FV "Legal Services Organizations" from system $HSIS211
// * #HD "Educational Institutions/Schools" from system $HSIS211
// * #HH "Educational Programs" from system $HSIS211
// * #HL "Educational Support Services" from system $HSIS211
// * #HP "Postsecondary Instructional Programs" from system $HSIS211
// * #JD "Environmental Protection and Improvement" from system $HSIS211
// * #JP "Public Health" from system $HSIS211
// * #JR "Public Safety" from system $HSIS211
// * #LD "Emergency Medical Care" from system $HSIS211
// * #LE "General Medical Care" from system $HSIS211
// * #LF "Health Screening/Diagnostic Services" from system $HSIS211
// * #LH "Health Supportive Services" from system $HSIS211
// * #LJ "Human Reproduction" from system $HSIS211
// * #LL "Inpatient Health Facilities" from system $HSIS211
// * #LM "Medical Laboratories" from system $HSIS211
// * #LN "Outpatient Health Facilities" from system $HSIS211
// * #LR "Rehabilitation/Habilitation Services" from system $HSIS211
// * #LT "Specialized Treatment and Prevention" from system $HSIS211
// * #LV "Specialty Medicine" from system $HSIS211
// * #ND "Employment" from system $HSIS211
// * #NL "Public Assistance Programs" from system $HSIS211
// * #NS "Social Insurance Programs" from system $HSIS211
// * #NT "Temporary Financial Assistance" from system $HSIS211
// * #PB "Death Certification/Burial Arrangements" from system $HSIS211
// * #PD "Domestic Animal Services" from system $HSIS211
// * #PH "Individual and Family Support Services" from system $HSIS211
// * #PL "Leisure Activities/Recreation" from system $HSIS211
// * #PN "Mutual Support" from system $HSIS211
// * #PS "Social Development and Enrichment" from system $HSIS211
// * #PV "Spiritual Enrichment" from system $HSIS211
// * #PW "Volunteer Development" from system $HSIS211
// * #PX "Volunteer Opportunities" from system $HSIS211
// * #RD "Counseling Approaches" from system $HSIS211
// * #RF "Counseling Settings" from system $HSIS211
// * #RM "Mental Health Care Facilities" from system $HSIS211
// * #RP "Mental Health Assessment and Treatment" from system $HSIS211
// * #RR "Mental Health Support Services" from system $HSIS211
// * #RX "Substance Use Disorder Services" from system $HSIS211
// * #TA "Arts and Culture" from system $HSIS211
// * #TB "Community Economic Development and Finance" from system $HSIS211
// * #TC "Community Facilities/Centers" from system $HSIS211
// * #TD "Community Groups and Government/Administrative Offices" from system $HSIS211
// * #TE "Community Planning and Public Works" from system $HSIS211
// * #TF "Community Recognition" from system $HSIS211
// * #TH "Disaster Services" from system $HSIS211
// * #TI "Donor Services" from system $HSIS211
// * #TJ "Information Services" from system $HSIS211
// * #TL "International Affairs" from system $HSIS211
// * #TM "Military Service" from system $HSIS211
// * #TN "Occupational/Professional Associations" from system $HSIS211
// * #TO "Organizational Development and Management Delivery Methods" from system $HSIS211
// * #TP "Organizational Development and Management Services" from system $HSIS211
// * #TQ "Political Organization and Participation" from system $HSIS211
// * #TR "Research" from system $HSIS211


// Example value set illustrating the classification of human services by type
ValueSet: HumanServiceType
Id: human-services-types
Title: "Human Services Type Value Set"
Description: "This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 Human Services Indexing System, except codes descending from Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-types
* ^compose.include.system = http://211hsis.org
* ^experimental = false
* ^compose.include.concept.display = "This value set represents codes descending from Levels 3-6 of the 211 Human Services Indexing System, except codes descending from Level 1 (Y - Target Populations terms that are modifiers for human services, not categories of services themselves)"

* #BD-1800 "Emergency Food" from system $HSIS211
* #BD-1800.1000 "Brown Bag Food Programs" from system $HSIS211
* #BD-1800.2000 "Food Pantries" from system $HSIS211
// * #BD-1800.2000-620 "Occasional Emergency Food Assistance" from system $HSIS211
* #BD-1800.2000-640 "Ongoing Emergency Food Assistance" from system $HSIS211
// * #FT-2700.0500 "Advance Medical Directives" from system $HSIS211
// * #FT-2700.0500-200 "Durable Power of Attorney for Health Care" from system $HSIS211
// * #FT-2700.0500-210 "Durable Power of Attorney for Mental Health Care" from system $HSIS211
// * #FT-2700.0500-450 "Living Wills" from system $HSIS211
// * #LH-0600.5000-970 "Wheelchairs/Wheeled Mobility" from system $HSIS211
// * #LH-0600.5000-970.10 "Beach Wheelchairs" from system $HSIS211
// * #LH-0600.5000-970.50 "Manual Wheelchairs" from system $HSIS211
// * #LH-0600.5000-970.60 "Powered Wheelchairs" from system $HSIS211
// * #LH-0600.5000-970.80 "Sports Wheelchairs" from system $HSIS211
