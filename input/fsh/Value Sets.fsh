Alias: $HealthcareServiceCategoryCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS
Alias: $ServiceTypeCS = http://terminology.hl7.org/CodeSystem/service-type
Alias: $HumanServiceProgramCS = http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceProgramCS
Alias: $HumanServiceCharacteristicCS = http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceCharacteristicCS
Alias: $NUCCProviderTaxonomy = http://nucc.org/provider-taxonomy


// Example value set containing broad categories of healthcare services being performed or delivered that are relevant to social care services and derived from the Plan-Net HumanServiceCategory code system

ValueSet: HumanServiceCategoryVS
Id: HumanServiceCategory
Title: "Human Service Category VS"
Description: "This example value set includes a subset of codes included in the Plan-Net Healthcare Service Category value set (HealthcareServiceCategoryVS)."
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^experimental = false
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCategory"
// * ^compose.include.system = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS"
* $HealthcareServiceCategoryCS#other "Other"
* HealthcareServiceCategoryCS#emerg	"Emergency care" 
* HealthcareServiceCategoryCS#group	"Medical Provider"
* HealthcareServiceCategoryCS#home "Home Health" 
* HealthcareServiceCategoryCS#trans	"Transportation" 

// Example value set containing Plannet service-types relevant to social care services

ValueSet: HumanServiceTypeVS
Id: HumanServiceType
Title: "Human Service Type VS"
Description: "This example value set includes an subset of service-types codes included in the Plan-Net Healthcare Service Type value set (HealthcareServiceTypeVS)."
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^experimental = false
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceType"
// * ^compose.include.system = "http://terminology.hl7.org/CodeSystem/service-type"
* $ServiceTypeCS#3 "Aged Care Information/Referral"
* $ServiceTypeCS#8 "Home Care/Housekeeping Assistance"
* $ServiceTypeCS#11 "Personal Care for Older Persons"
* $ServiceTypeCS#70 "Crisis Counselling"
* $ServiceTypeCS#105 "Drug and/or Alcohol Counselling"
* $ServiceTypeCS#106 "Drug/Alcohol Information/Referral"
* $ServiceTypeCS#111 "Residential Alcohol/Drug Treatment"
* $ServiceTypeCS#126 "Crisis/Emergency Accommodation"
* $ServiceTypeCS#128 "Housing Information/Referral"
* $ServiceTypeCS#130 "Interpreting/Multilingual Service"
* $ServiceTypeCS#146 "Physical Activity Programs"
* $ServiceTypeCS#230 "Patient Transport"
* $ServiceTypeCS#344 "Food"
* $ServiceTypeCS#530 "Disability Care Transport"
* $ServiceTypeCS#531 "Aged Care Transport"
* $ServiceTypeCS#532 "Diabetes Education s"
* $ServiceTypeCS#537 "Medication Reviews"
* $ServiceTypeCS#548 "Food Relief/Food/Meals"


// Example value set of Program types relevant to searching for social care services by the program under which they are provided

ValueSet: HumanServiceProgramVS
Id: HumanServiceProgram
Title: "Human Service Program VS"
Description: "This example value set includes codes that describe Programs under which community-based organizations can organize the social services they deliver."
* ^experimental = false
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceProgram"
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
Description: "This example value set includes codes that describe unique features that can be associated with community-based social services delivered at particular locations."
* ^experimental = false
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCharacteristic"
// * codes from system  HumanServiceCharacteristicCS
* ^compose.include.system = "http://hl7.org/fhir/us/hsds/CodeSystem/HumanServiceCharacteristicCS"
* $HumanServiceCharacteristicCS#Wheelchair "Wheelchair Access"
* $HumanServiceCharacteristicCS#Interpret "Interpretation Services"
* $HumanServiceCharacteristicCS#Computer "Computer & Internet Access"
* $HumanServiceCharacteristicCS#Baby "Diapers & Formula"

ValueSet: NonIndividualSpecialtiesVS
Id: NonIndividualSpecialties
Title: "Non-Individual Specialties"
Description: "Non-Individual Specialties from National Uniform Claim Committee (NUCC) Health Care Provider Taxonomy code set."
* ^experimental = false
* ^publisher = "HL7 International - Human and Social Services Work Group"
* ^contact.name = "HL7 International - Human and Social Services Work Group"
* ^contact.telecom.system = #url
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/NonIndividualSpecialties"
* $NUCCProviderTaxonomy#251300000X "Local Education Agency (LEA)"
* $NUCCProviderTaxonomy#251B00000X "Case Management Agency"
* $NUCCProviderTaxonomy#251C00000X "Developmentally Disabled Services Day Training Agency"
* $NUCCProviderTaxonomy#251E00000X "Home Health Agency"
* $NUCCProviderTaxonomy#251F00000X "Home Infusion Agency"
* $NUCCProviderTaxonomy#251G00000X "Community Based Hospice Care Agency"
* $NUCCProviderTaxonomy#251J00000X "Nursing Care Agency"
* $NUCCProviderTaxonomy#251K00000X "Public Health or Welfare Agency"
* $NUCCProviderTaxonomy#251S00000X "Community/Behavioral Health Agency"
* $NUCCProviderTaxonomy#251T00000X "PACE Provider Organization"
* $NUCCProviderTaxonomy#251V00000X "Voluntary or Charitable Agency"
* $NUCCProviderTaxonomy#251X00000X "Supports Brokerage Agency"
* $NUCCProviderTaxonomy#252Y00000X "Early Intervention Provider Agency"
* $NUCCProviderTaxonomy#253J00000X "Foster Care Agency"
* $NUCCProviderTaxonomy#253Z00000X "In Home Supportive Care Agency"
* $NUCCProviderTaxonomy#261Q00000X "Clinic/Center"
* $NUCCProviderTaxonomy#261QA0005X "Ambulatory Family Planning Facility"
* $NUCCProviderTaxonomy#261QA0006X "Ambulatory Fertility Facility"
* $NUCCProviderTaxonomy#261QA0600X "Adult Day Care Clinic/Center"
* $NUCCProviderTaxonomy#261QA0900X "Amputee Clinic/Center"
* $NUCCProviderTaxonomy#261QA1903X "Ambulatory Surgical Clinic/Center"
* $NUCCProviderTaxonomy#261QA3000X "Augmentative Communication Clinic/Center"
* $NUCCProviderTaxonomy#261QB0400X "Birthing Clinic/Center"
* $NUCCProviderTaxonomy#261QC0050X "Critical Access Hospital Clinic/Center"
* $NUCCProviderTaxonomy#261QC1500X "Community Health Clinic/Center"
* $NUCCProviderTaxonomy#261QC1800X "Corporate Health Clinic/Center"
* $NUCCProviderTaxonomy#261QD0000X "Dental Clinic/Center"
* $NUCCProviderTaxonomy#261QD1600X "Developmental Disabilities Clinic/Center"
* $NUCCProviderTaxonomy#261QE0002X "Emergency Care Clinic/Center"
* $NUCCProviderTaxonomy#261QE0700X "End-Stage Renal Disease (ESRD) Treatment Clinic/Center"
* $NUCCProviderTaxonomy#261QE0800X "Endoscopy Clinic/Center"
* $NUCCProviderTaxonomy#261QF0050X "Non-Surgical Family Planning Clinic/Center"
* $NUCCProviderTaxonomy#261QF0400X "Federally Qualified Health Center (FQHC)"
* $NUCCProviderTaxonomy#261QG0250X "Genetics Clinic/Center"
* $NUCCProviderTaxonomy#261QH0100X "Health Service Clinic/Center"
* $NUCCProviderTaxonomy#261QH0700X "Hearing and Speech Clinic/Center"
* $NUCCProviderTaxonomy#261QI0500X "Infusion Therapy Clinic/Center"
* $NUCCProviderTaxonomy#261QL0400X "Lithotripsy Clinic/Center"
* $NUCCProviderTaxonomy#261QM0801X "Mental Health Clinic/Center (Including Community Mental Health Center)"
* $NUCCProviderTaxonomy#261QM0850X "Adult Mental Health Clinic/Center"
* $NUCCProviderTaxonomy#261QM0855X "Adolescent and Children Mental Health Clinic/Center"
* $NUCCProviderTaxonomy#261QM1000X "Migrant Health Clinic/Center"
* $NUCCProviderTaxonomy#261QM1100X "Military/U.S. Coast Guard Outpatient Clinic/Center"
* $NUCCProviderTaxonomy#261QM1101X "Military and U.S. Coast Guard Ambulatory Procedure Clinic/Center"
* $NUCCProviderTaxonomy#261QM1102X "Military Outpatient Operational (Transportable) Component Clinic/Center"
* $NUCCProviderTaxonomy#261QM1103X "Military Ambulatory Procedure Visits Operational (Transportable) Clinic/Center"
* $NUCCProviderTaxonomy#261QM1200X "Magnetic Resonance Imaging (MRI) Clinic/Center"
* $NUCCProviderTaxonomy#261QM1300X "Multi-Specialty Clinic/Center"
* $NUCCProviderTaxonomy#261QM2500X "Medical Specialty Clinic/Center"
* $NUCCProviderTaxonomy#261QM2800X "Methadone Clinic"
* $NUCCProviderTaxonomy#261QM3000X "Medically Fragile Infants and Children Day Care"
* $NUCCProviderTaxonomy#261QP0904X "Federal Public Health Clinic/Center"
* $NUCCProviderTaxonomy#261QP0905X "State or Local Public Health Clinic/Center"
* $NUCCProviderTaxonomy#261QP1100X "Podiatric Clinic/Center"
* $NUCCProviderTaxonomy#261QP2000X "Physical Therapy Clinic/Center"
* $NUCCProviderTaxonomy#261QP2300X "Primary Care Clinic/Center"
* $NUCCProviderTaxonomy#261QP2400X "Prison Health Clinic/Center"
* $NUCCProviderTaxonomy#261QP3300X "Pain Clinic/Center"
* $NUCCProviderTaxonomy#261QR0200X "Radiology Clinic/Center"
* $NUCCProviderTaxonomy#261QR0206X "Mammography Clinic/Center"
* $NUCCProviderTaxonomy#261QR0207X "Mobile Mammography Clinic/Center"
* $NUCCProviderTaxonomy#261QR0208X "Mobile Radiology Clinic/Center"
* $NUCCProviderTaxonomy#261QR0400X "Rehabilitation Clinic/Center"
* $NUCCProviderTaxonomy#261QR0401X "Comprehensive Outpatient Rehabilitation Facility (CORF)"
* $NUCCProviderTaxonomy#261QR0404X "Cardiac Rehabilitation Clinic/Center"
* $NUCCProviderTaxonomy#261QR0405X "Substance Use Disorder Rehabilitation Clinic/Center"
* $NUCCProviderTaxonomy#261QR0800X "Recovery Care Clinic/Center"
* $NUCCProviderTaxonomy#261QR1100X "Research Clinic/Center"
* $NUCCProviderTaxonomy#261QR1300X "Rural Health Clinic/Center"
* $NUCCProviderTaxonomy#261QS0112X "Oral and Maxillofacial Surgery Clinic/Center"
* $NUCCProviderTaxonomy#261QS0132X "Ophthalmologic Surgery Clinic/Center"
* $NUCCProviderTaxonomy#261QS1000X "Student Health Clinic/Center"
* $NUCCProviderTaxonomy#261QS1200X "Sleep Disorder Diagnostic Clinic/Center"
* $NUCCProviderTaxonomy#261QU0200X "Urgent Care Clinic/Center"
* $NUCCProviderTaxonomy#261QV0200X "VA Clinic/Center"
* $NUCCProviderTaxonomy#261QX0100X "Occupational Medicine Clinic/Center"
* $NUCCProviderTaxonomy#261QX0200X "Oncology Clinic/Center"
* $NUCCProviderTaxonomy#261QX0203X "Radiation Oncology Clinic/Center"
* $NUCCProviderTaxonomy#273100000X "Epilepsy Hospital Unit"
* $NUCCProviderTaxonomy#273R00000X "Psychiatric Hospital Unit"
* $NUCCProviderTaxonomy#273Y00000X "Rehabilitation Hospital Unit"
* $NUCCProviderTaxonomy#275N00000X "Medicare Defined Swing Bed Hospital Unit"
* $NUCCProviderTaxonomy#276400000X "Substance Use Disorder Rehabilitation Hospital Unit"
* $NUCCProviderTaxonomy#281P00000X "Chronic Disease Hospital"
* $NUCCProviderTaxonomy#281PC2000X "Children' s Chronic Disease Hospital"
* $NUCCProviderTaxonomy#282E00000X "Long Term Care Hospital"
* $NUCCProviderTaxonomy#282J00000X "Religious Nonmedical Health Care Institution"
* $NUCCProviderTaxonomy#282N00000X "General Acute Care Hospital"
* $NUCCProviderTaxonomy#282NC0060X "Critical Access Hospital"
* $NUCCProviderTaxonomy#282NC2000X "Children's Hospital"
* $NUCCProviderTaxonomy#282NR1301X "Rural Acute Care Hospital"
* $NUCCProviderTaxonomy#282NW0100X "Women's Hospital"
* $NUCCProviderTaxonomy#283Q00000X "Psychiatric Hospital"
* $NUCCProviderTaxonomy#283X00000X "Rehabilitation Hospital"
* $NUCCProviderTaxonomy#283XC2000X "Children's Rehabilitation Hospital"
* $NUCCProviderTaxonomy#284300000X "Special Hospital"
* $NUCCProviderTaxonomy#286500000X "Military Hospital"
* $NUCCProviderTaxonomy#2865M2000X "Military General Acute Care Hospital"
* $NUCCProviderTaxonomy#2865X1600X "Operational (Transportable) Military General Acute Care Hospital"
* $NUCCProviderTaxonomy#291900000X "Military Clinical Medical Laboratory"
* $NUCCProviderTaxonomy#291U00000X "Clinical Medical Laboratory"
* $NUCCProviderTaxonomy#292200000X "Dental Laboratory"
* $NUCCProviderTaxonomy#293D00000X "Physiological Laboratory"
* $NUCCProviderTaxonomy#302F00000X "Exclusive Provider Organization"
* $NUCCProviderTaxonomy#302R00000X "Health Maintenance Organization"
* $NUCCProviderTaxonomy#305R00000X "Preferred Provider Organization"
* $NUCCProviderTaxonomy#305S00000X "Point of Service"
* $NUCCProviderTaxonomy#310400000X "Assisted Living Facility"
* $NUCCProviderTaxonomy#3104A0625X "Assisted Living Facility (Mental Illness)"
* $NUCCProviderTaxonomy#3104A0630X "Assisted Living Facility (Behavioral Disturbances)"
* $NUCCProviderTaxonomy#310500000X "Mental Illness Intermediate Care Facility"
* $NUCCProviderTaxonomy#311500000X "Alzheimer Center (Dementia Center)"
* $NUCCProviderTaxonomy#311Z00000X "Custodial Care Facility"
* $NUCCProviderTaxonomy#311ZA0620X "Adult Care Home Facility"
* $NUCCProviderTaxonomy#313M00000X "Nursing Facility/Intermediate Care Facility"
* $NUCCProviderTaxonomy#314000000X "Skilled Nursing Facility"
* $NUCCProviderTaxonomy#3140N1450X "Pediatric Skilled Nursing Facility"
* $NUCCProviderTaxonomy#315D00000X "Inpatient Hospice"
* $NUCCProviderTaxonomy#315P00000X "Intellectual Disabilities Intermediate Care Facility"
* $NUCCProviderTaxonomy#174200000X "Meals Provider"
* $NUCCProviderTaxonomy#177F00000X "Lodging Provider"
* $NUCCProviderTaxonomy#320600000X "Intellectual and/or Developmental Disabilities Residential Treatment Facility"
* $NUCCProviderTaxonomy#320700000X "Physical Disabilities Residential Treatment Facility"
* $NUCCProviderTaxonomy#320800000X "Mental Illness Community Based Residential Treatment Facility"
* $NUCCProviderTaxonomy#320900000X "Intellectual and/or Developmental Disabilities Community Based Residential Treatment Facility"
* $NUCCProviderTaxonomy#322D00000X "Emotionally Disturbed Childrens' Residential Treatment Facility"
* $NUCCProviderTaxonomy#323P00000X "Psychiatric Residential Treatment Facility"
* $NUCCProviderTaxonomy#324500000X "Substance Abuse Rehabilitation Facility"
* $NUCCProviderTaxonomy#3245S0500X "Children's Substance Abuse Rehabilitation Facility"
* $NUCCProviderTaxonomy#385H00000X "Respite Care"
* $NUCCProviderTaxonomy#385HR2050X "Respite Care Camp"
* $NUCCProviderTaxonomy#385HR2055X "Child Mental Illness Respite Care"
* $NUCCProviderTaxonomy#385HR2060X "Child Intellectual and/or Developmental Disabilities Respite Care"
* $NUCCProviderTaxonomy#385HR2065X "Child Physical Disabilities Respite Care"
* $NUCCProviderTaxonomy#331L00000X "Blood Bank"
* $NUCCProviderTaxonomy#332000000X "Military/U.S. Coast Guard Pharmacy"
* $NUCCProviderTaxonomy#332100000X "Department of Veterans Affairs (VA) Pharmacy"
* $NUCCProviderTaxonomy#332800000X "Indian Health Service/Tribal/Urban Indian Health (I/T/U) Pharmacy"
* $NUCCProviderTaxonomy#332900000X "Non-Pharmacy Dispensing Site"
* $NUCCProviderTaxonomy#332B00000X "Durable Medical Equipment & Medical Supplies"
* $NUCCProviderTaxonomy#332BC3200X "Customized Equipment (DME)"
* $NUCCProviderTaxonomy#332BD1200X "Dialysis Equipment & Supplies (DME)"
* $NUCCProviderTaxonomy#332BN1400X "Nursing Facility Supplies (DME)"
* $NUCCProviderTaxonomy#332BP3500X "Parenteral & Enteral Nutrition Supplies (DME)"
* $NUCCProviderTaxonomy#332BX2000X "Oxygen Equipment & Supplies (DME)"
* $NUCCProviderTaxonomy#332G00000X "Eye Bank"
* $NUCCProviderTaxonomy#332H00000X "Eyewear Supplier"
* $NUCCProviderTaxonomy#332S00000X "Hearing Aid Equipment"
* $NUCCProviderTaxonomy#332U00000X "Home Delivered Meals"
* $NUCCProviderTaxonomy#333300000X "Emergency Response System Companies"
* $NUCCProviderTaxonomy#333600000X "Pharmacy"
* $NUCCProviderTaxonomy#3336C0002X "Clinic Pharmacy"
* $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
* $NUCCProviderTaxonomy#3336C0004X "Compounding Pharmacy"
* $NUCCProviderTaxonomy#3336H0001X "Home Infusion Therapy Pharmacy"
* $NUCCProviderTaxonomy#3336I0012X "Institutional Pharmacy"
* $NUCCProviderTaxonomy#3336L0003X "Long Term Care Pharmacy"
* $NUCCProviderTaxonomy#3336M0002X "Mail Order Pharmacy"
* $NUCCProviderTaxonomy#3336M0003X "Managed Care Organization Pharmacy"
* $NUCCProviderTaxonomy#3336N0007X "Nuclear Pharmacy"
* $NUCCProviderTaxonomy#3336S0011X "Specialty Pharmacy"
* $NUCCProviderTaxonomy#335E00000X "Prosthetic/Orthotic Supplier"
* $NUCCProviderTaxonomy#335G00000X "Medical Foods Supplier"
* $NUCCProviderTaxonomy#335U00000X "Organ Procurement Organization"
* $NUCCProviderTaxonomy#335V00000X "Portable X-ray and/or Other Portable Diagnostic Imaging Supplier"
* $NUCCProviderTaxonomy#341600000X "Ambulance"
* $NUCCProviderTaxonomy#3416A0800X "Air Ambulance"
* $NUCCProviderTaxonomy#3416L0300X "Land Ambulance"
* $NUCCProviderTaxonomy#3416S0300X "Water Ambulance"
* $NUCCProviderTaxonomy#341800000X "Military/U.S. Coast Guard Transport,"
* $NUCCProviderTaxonomy#3418M1110X "Military or U.S. Coast Guard Ground Transport Ambulance"
* $NUCCProviderTaxonomy#3418M1120X "Military or U.S. Coast Guard Air Transport Ambulance"
* $NUCCProviderTaxonomy#3418M1130X "Military or U.S. Coast Guard Water Transport Ambulance"
* $NUCCProviderTaxonomy#342000000X "Transportation Network Company"   // added effective 04/21/21
* $NUCCProviderTaxonomy#343800000X "Secured Medical Transport (VAN)"
* $NUCCProviderTaxonomy#343900000X "Non-emergency Medical Transport (VAN)"
* $NUCCProviderTaxonomy#344600000X "Taxi"
* $NUCCProviderTaxonomy#344800000X "Air Carrier"
* $NUCCProviderTaxonomy#347B00000X "Bus"
* $NUCCProviderTaxonomy#347C00000X "Private Vehicle"
* $NUCCProviderTaxonomy#347D00000X "Train"
* $NUCCProviderTaxonomy#347E00000X "Transportation Broker"
