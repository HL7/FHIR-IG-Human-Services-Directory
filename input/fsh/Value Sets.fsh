Alias: $LA211TaxonomyHumanServicesCS = http://211taxonomy.org
// Example value set illustrating the high level categories by which Human Services Directories can be queried
// The "include" in this rule is optional
// http://211taxonomy.org can be replaced with an alias
ValueSet: HumanServiceCategoryVS
Title: "Human Services Categories Value Set"
Description: "This example value set is intended to represent the high level categories corresponding to Social Determinant of Health (SDOH) domains. The value set includes values descending from Level 2 of the 211 LA Taxonomy of Human Services, except codes included in Level 1 (Y - Target Populations)."
* ^compose.include.system = http://211taxonomy.org
* ^compose.include.concept.display = "This value set represents codes found in Level 2 of the 211 LA Taxonomy of Human Services, except for codes descending from Level 1 (Y Target Populations terms that are modifiers for human services, not categories of services themselves)"
// * http://hl7.org/fhir/StructureDefinition/valueset-rules-text
// * include codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level2
// * exclude codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level1Y-TargetPopulations

// Example value set illustrating the classification of human services by type
ValueSet: HumanServiceTypeVS
Title: "Human Services Type Value Set"
Description: "This example value set represents the more refined classification of human services by which human services directories can be queried. This value set represents codes found in Levels 3-6 of the 211 LA Taxonomy of Human Services, except codes descending from Level 1 (Y - Target Populations)."
* ^compose.include.system = http://211taxonomy.org
* ^compose.include.concept.display = "This value set represents codes descending from Levels 3-6 of the 211 LA Taxonomy of Human Services, except codes descending from Level 1 (Y - Target Populations terms that are modifiers for human services, not categories of services themselves)"
// * include codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level3-6
// * exclude codes from system $LA211TaxonomyHumanServicesCS where concept is-a #Level1Y-TargetPopulations