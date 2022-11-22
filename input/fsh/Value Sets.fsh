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
Id: human-services-categories
Title: "Human Services Categories Value Set"
Description: "This example value set is intended to represent the high level categories corresponding to Social Determinant of Health (SDOH) domains. The value set includes values descending from Level 2 of the 211 LA Taxonomy of Human Services, except codes included in Level 1 (Y - Target Populations)."
* ^compose.include.system = http://211taxonomy.org
* ^experimental = false
// * ^compose.include.concept.code = 
* ^compose.include.concept.display = "This value set represents codes found in Level 2 of the 211 LA Taxonomy of Human Services, except for codes descending from Level 1 (Y Target Populations terms that are modifiers for human services, not categories of services themselves)"

// * $LA211TaxonomyHumanServicesCS "BD Food"
// * $LA211TaxonomyHumanServicesCS "BH Housing/Shelter"


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
// * include codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level3-6
// * exclude codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level1Y-TargetPopulations