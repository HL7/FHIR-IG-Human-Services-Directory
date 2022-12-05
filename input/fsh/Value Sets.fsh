Alias: $CS_211HSIS = http://211hsis.org
// Example value set illustrating the high level categories by which Human Services Directories can be queried
// The "include" in this rule is optional
// http://211hsis.org can be replaced with an alias

ValueSet: HumanServiceCategory
Id: human-services-category
Title: "Human Services Category Value Set"
Description: "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 Human Services Indexing System, except codes included in Level 1 (Y - Target Populations)."
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-category
// * ^compose.include.system = http://211hsis.org
* ^experimental = false
* ^extension.url = http://hl7.org/fhir/StructureDefinition/valueset-rules-text
* ^extension.valueMarkdown = "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 Human Services Indexing System, except codes included in Level 1 (Y - Target Populations)."
/* "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/valueset-rules-text",
      "valueMarkdown": "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 Human Services Indexing System, except codes included in Level 1 (Y - Target Populations)."
    }]	*/ 
// * #BD "Food" from system $CS_211HSIS
// * #BH "Housing/Shelter" from system $CS_211HSIS
// * #BM "Material Goods" from system $CS_211HSIS
// * #BT "Transportation" from system $CS_211HSIS
// * #BV "Utilities" from system $CS_211HSIS
// * #DD "Consumer Assistance and Protection" from system $CS_211HSIS
// * #DF "Consumer Regulation" from system $CS_211HSIS
// * #DM "Money Management" from system $CS_211HSIS
// * #DT "Tax Organizations and Services" from system $CS_211HSIS
// * #FC "Courts" from system $CS_211HSIS
// * #FF "Criminal Correctional System" from system $CS_211HSIS
// * #FJ "Judicial Services" from system $CS_211HSIS
// * #FL "Law Enforcement Agencies" from system $CS_211HSIS
// * #FN "Law Enforcement Services" from system $CS_211HSIS
// * #FP "Legal Assistance Modalities" from system $CS_211HSIS
// * #FS "Legal Expense Insurance" from system $CS_211HSIS
// * #FT "Legal Services" from system $CS_211HSIS
// * #FV "Legal Services Organizations" from system $CS_211HSIS
// * #HD "Educational Institutions/Schools" from system $CS_211HSIS
// * #HH "Educational Programs" from system $CS_211HSIS
// * #HL "Educational Support Services" from system $CS_211HSIS
// * #HP "Postsecondary Instructional Programs" from system $CS_211HSIS
// * #JD "Environmental Protection and Improvement" from system $CS_211HSIS
// * #JP "Public Health" from system $CS_211HSIS
// * #JR "Public Safety" from system $CS_211HSIS
// * #LD "Emergency Medical Care" from system $CS_211HSIS
// * #LE "General Medical Care" from system $CS_211HSIS
// * #LF "Health Screening/Diagnostic Services" from system $CS_211HSIS
// * #LH "Health Supportive Services" from system $CS_211HSIS
// * #LJ "Human Reproduction" from system $CS_211HSIS
// * #LL "Inpatient Health Facilities" from system $CS_211HSIS
// * #LM "Medical Laboratories" from system $CS_211HSIS
// * #LN "Outpatient Health Facilities" from system $CS_211HSIS
// * #LR "Rehabilitation/Habilitation Services" from system $CS_211HSIS
// * #LT "Specialized Treatment and Prevention" from system $CS_211HSIS
// * #LV "Specialty Medicine" from system $CS_211HSIS
// * #ND "Employment" from system $CS_211HSIS
// * #NL "Public Assistance Programs" from system $CS_211HSIS
// * #NS "Social Insurance Programs" from system $CS_211HSIS
// * #NT "Temporary Financial Assistance" from system $CS_211HSIS
// * #PB "Death Certification/Burial Arrangements" from system $CS_211HSIS
// * #PD "Domestic Animal Services" from system $CS_211HSIS
// * #PH "Individual and Family Support Services" from system $CS_211HSIS
// * #PL "Leisure Activities/Recreation" from system $CS_211HSIS
// * #PN "Mutual Support" from system $CS_211HSIS
// * #PS "Social Development and Enrichment" from system $CS_211HSIS
// * #PV "Spiritual Enrichment" from system $CS_211HSIS
// * #PW "Volunteer Development" from system $CS_211HSIS
// * #PX "Volunteer Opportunities" from system $CS_211HSIS
// * #RD "Counseling Approaches" from system $CS_211HSIS
// * #RF "Counseling Settings" from system $CS_211HSIS
// * #RM "Mental Health Care Facilities" from system $CS_211HSIS
// * #RP "Mental Health Assessment and Treatment" from system $CS_211HSIS
// * #RR "Mental Health Support Services" from system $CS_211HSIS
// * #RX "Substance Use Disorder Services" from system $CS_211HSIS
// * #TA "Arts and Culture" from system $CS_211HSIS
// * #TB "Community Economic Development and Finance" from system $CS_211HSIS
// * #TC "Community Facilities/Centers" from system $CS_211HSIS
// * #TD "Community Groups and Government/Administrative Offices" from system $CS_211HSIS
// * #TE "Community Planning and Public Works" from system $CS_211HSIS
// * #TF "Community Recognition" from system $CS_211HSIS
// * #TH "Disaster Services" from system $CS_211HSIS
// * #TI "Donor Services" from system $CS_211HSIS
// * #TJ "Information Services" from system $CS_211HSIS
// * #TL "International Affairs" from system $CS_211HSIS
// * #TM "Military Service" from system $CS_211HSIS
// * #TN "Occupational/Professional Associations" from system $CS_211HSIS
// * #TO "Organizational Development and Management Delivery Methods" from system $CS_211HSIS
// * #TP "Organizational Development and Management Services" from system $CS_211HSIS
// * #TQ "Political Organization and Participation" from system $CS_211HSIS
// * #TR "Research" from system $CS_211HSIS


// Example value set illustrating the classification of human services by type
ValueSet: HumanServiceType
Id: human-services-types
Title: "Human Services Type Value Set"
Description: "This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 Human Services Indexing System, except codes descending from Level 1 (Y - Target Populations)."
* ^experimental = false
* ^extension.url = http://hl7.org/fhir/StructureDefinition/valueset-rules-text
* ^extension.valueMarkdown = "Testing one two three This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 Human Services Indexing System, except codes descending from Level 1 (Y - Target Populations)."
/* "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/valueset-rules-text",
      "valueMarkdown": "This example value set is intended to represent the high level categories corresponding to human and social services domains. The value set includes values descending from Level 2 of the 211 Human Services Indexing System, except codes included in Level 1 (Y - Target Populations)."
    }]	*/
* ^url = http://hl7.org/fhir/us/hsds/ValueSet/human-services-types
// * ^compose.include.system = http://211hsis.org
* ^experimental = false
// * #BD-1800 "Emergency Food" from system $CS_211HSIS
// * #BD-1800.1000 "Brown Bag Food Programs" from system $CS_211HSIS
// * #BD-1800.2000 "Food Pantries" from system $CS_211HSIS
// * #BD-1800.2000-620 "Occasional Emergency Food Assistance" from system $CS_211HSIS
// * #BD-1800.2000-640 "Ongoing Emergency Food Assistance" from system $CS_211HSIS//
// * #FT-2700.0500 "Advance Medical Directives" from system $CS_211HSIS
// * #FT-2700.0500-200 "Durable Power of Attorney for Health Care" from system $CS_211HSIS
// * #FT-2700.0500-210 "Durable Power of Attorney for Mental Health Care" from system $CS_211HSIS
// * #FT-2700.0500-450 "Living Wills" from system $CS_211HSIS
// * #LH-0600.5000-970 "Wheelchairs/Wheeled Mobility" from system $CS_211HSIS
// * #LH-0600.5000-970.10 "Beach Wheelchairs" from system $CS_211HSIS
// * #LH-0600.5000-970.50 "Manual Wheelchairs" from system $CS_211HSIS
// * #LH-0600.5000-970.60 "Powered Wheelchairs" from system $CS_211HSIS
// * #LH-0600.5000-970.80 "Sports Wheelchairs" from system $CS_211HSIS
