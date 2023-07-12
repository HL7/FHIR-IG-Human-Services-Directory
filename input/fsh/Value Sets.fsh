Alias: $HealthcareServiceCategoryCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS
Alias: $ServiceTypeCS = http://terminology.hl7.org/CodeSystem/service-type
Alias: $HumanServiceProgramCS = http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceProgramCS
Alias: $HumanServiceCharacteristicCS = http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceCharacteristicCS


// Example value set containing broad categories of healthcare services being performed or delivered that are relevant to social care services and derived from the Plan-Net HumanServiceCategory code system

ValueSet: HumanServiceCategoryVS
Id: HumanServiceCategory
Title: "Human Service Category VS"
Description: "This example value set includes a subset of codes included in the Plan-Net Healthcare Service Category value set (HealthcareServiceCategoryVS)."
* ^experimental = true
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCategory"
* ^compose.include.system = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS"
* HealthcareServiceCategoryCS#behav	"Behavioral Health" 
* HealthcareServiceCategoryCS#home "Home Health" 
* HealthcareServiceCategoryCS#trans	"Transportation" 

// Example value set containing Plannet service-types relevant to social care services

ValueSet: HumanServiceTypeVS
Id: HumanServiceType
Title: "Human Service Type VS"
Description: "This example value set includes an subset of service-types codes included in the Plan-Net Healthcare Service Type value set (HealthcareServiceTypeVS)."
* ^experimental = true
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceType"
* ^compose.include.system = "http://terminology.hl7.org/CodeSystem/service-type"
* $ServiceTypeCS#3 "Aged Care Information/Referral" 
* $ServiceTypeCS#8 "Home Care/Housekeeping Assistance" 
* $ServiceTypeCS#11 "Personal Care for Older Persons" 
* $ServiceTypeCS#127 "Homelessness Support" 
* $ServiceTypeCS#128 "Housing Information/Referral" 
* $ServiceTypeCS#344 "Food" 
* $ServiceTypeCS#345 "Food Vouchers" 
* $ServiceTypeCS#530 "Disability Care Transport" 
* $ServiceTypeCS#531 "Aged Care Transport"

// Example value set of Program types relevant to searching for social care services by the program under which they are provided

ValueSet: HumanServiceProgramVS
Id: HumanServiceProgram
Title: "Human Service Program VS"
Description: "This example value set includes that describe Programs under which community-based social services can be delivered."
* ^experimental = true
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceProgramCS"
* ^compose.include.system = "http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceProgramCS"
// * codes from system  HumanServiceProgramCS
* $HumanServiceProgramCS#CSFP "The Commodity Supplemental Food Program"
* $HumanServiceProgramCS#ForDisabled "Programs for Persons with Disabilities"
* $HumanServiceProgramCS#Food "Assistance	Food Assistance"
* $HumanServiceProgramCS#ForSeniors "Program for Seniors"
* $HumanServiceProgramCS#Homelessness "Homelessness Prevention Programs"
* $HumanServiceProgramCS#ONHPP "Nutrition and Health Promotion Programs"
* $HumanServiceProgramCS#SNAP "Suplemental Nutrition Assistance Program"
* $HumanServiceProgramCS#TANF "Temporary Assistance for Needy Families"
* $HumanServiceProgramCS#TEFAP "The Emergency Food Assistance Program"
* $HumanServiceProgramCS#WIC "Women, Infants, & Children"

// Example value set of Human Service Characteristic codes describing unique features associated with community-based social services

ValueSet: HumanServiceCharacteristicVS
Id: HumanServiceCharacteristic
Title: "Human Service Characteristic VS"
Description: "This example value set includes that describe Programs under which community-based social services can be delivered."
* ^experimental = true
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceCharacteristicCS"
// * codes from system  HumanServiceCharacteristicCS
* ^compose.include.system = "http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceCharacteristicCS"
* $HumanServiceCharacteristicCS#Wheelchair "Wheelchair Access"
* $HumanServiceCharacteristicCS#Interpret "Interpretation Services"
* $HumanServiceCharacteristicCS#Computer "Computer & Internet Access"
* $HumanServiceCharacteristicCS#Baby "Diapers & Formula"

