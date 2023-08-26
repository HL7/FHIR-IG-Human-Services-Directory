Alias: LANGUAGE = urn:ietf:bcp:47
Alias: $PlannetCategoryCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS
Alias: $PlannetTypeCS = http://terminology.hl7.org/CodeSystem/service-type
Alias: $ROLECODE = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: IdentifierUse = http://hl7.org/fhir/identifier-use
Alias: IdentifierType = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: ContactPointUse = http://hl7.org/fhir/contact-point-use
Alias: ContactNameUse = http://hl7.org/fhir/name-use
Alias: HSDOrganization = http://hl7.org/fhir/us/hsds/StructureDefinition/hsds-Organization
Alias: $QualificationStatusCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/QualificationStatusCS
Alias: $NUCCProviderTaxonomy  = http://nucc.org/provider-taxonomy


Instance: FoodBank
InstanceOf: HSDOrganization
Description: "Community-Based Organization that provides food pantry services. Since the HSDS source for Organizations does not include organization address, address information has been omitted from the examples. Address information is associated with the locations at which services provided by community-based organizations are provided. In addition, information that is mapped from the HSDS Contact table is mapped to a new extension: OrgContactInfo."     
Usage: #example
* meta.profile = Canonical(HSDOrganization) 
* meta.lastUpdated = "2023-08-24T11:26:22.0314215+00:00"
* active = true
* name = "Redwood Food Bank"
* type = OrgTypeCS#atyprv "Atypical Provider"
* alias = "Food Bank of the Redwoods"
* telecom[0].system = #phone
* telecom[0].value = "(999)-222-3333"
* telecom[0].use = ContactPointUse#work "work"
// Since this is a GAP in HSDS, the contactpoint extension is not relevant to Organizations (the HSDS schedule table only contains details of when a service or location is open)
* telecom[1].system = #url
* telecom[1].value = "https://redwoodfoodbank.org/"
* telecom[1].use = ContactPointUse#work "work"
// address is excluded because there is no source in HSDS organization table
* extension[org-description].valueString = "This community services agency distributes over a ton of food each work day to low income individuals and families throughout Northern California."
* identifier[IRS].use = IdentifierUse#official
* identifier[IRS].type = IdentifierType#TAX
// * identifier[IRS].system = "urn:us:gov:irs"
// * identifier[IRS] ^patternIdentifier.system = "urn:us:gov:irs"
* identifier[IRS].value =  "xx-xxxxxxx"
* identifier[IRS].assigner.display = "http://www.irs.gov"
* identifier[IRS].period.start = 2010-07-01
* contact.telecom.system = #phone
* contact.telecom.value = "(999)-111-2231"
* contact.telecom.use = ContactPointUse#work "work"
* contact.name.use = ContactNameUse#usual "usual"
* contact.name.family = "Smith"
* contact.name.given = "Gerald"
* contact.telecom.extension[org-contactinfo].extension[title].valueString = "Food Bank Director"
* contact.telecom.extension[org-contactinfo].extension[department].valueString = "Executive Services"
* contact.telecom.extension[org-contactinfo].extension[email].valueString = "gsmith@redwoodfoodbank.org"



Instance: WhistlestopWheels
InstanceOf: HSDOrganization
Description: "Community-Based Organization that provides food pantry services. Since the HSDS source for Organizations does not include organization address, address information has been omitted from the examples. Address information is associated with the locations at which services provided by community-based organizations are provided. In addition, information that is mapped from the HSDS Contact table is mapped to a new extension: OrgContactInfo."     
Usage: #example
* meta.profile = Canonical(HSDOrganization) 
* meta.lastUpdated = "2023-08-24T11:26:22.0314215+00:00"
* active = true
* name = "Whistlestop Wheels"
* type = OrgTypeCS#atyprv "Atypical Provider"
* telecom[0].system = #phone
* telecom[0].value = "(999)-222-9999"
* telecom[0].use = ContactPointUse#work "work"
// Since extension is a GAP in HSDS, the contactpoint extension is not relevant to Organizations (the HSDS schedule table only contains details of when a service or location is open)
* telecom[1].system = #url
* telecom[1].value = "https://whistlestop.org/"
* telecom[1].use = ContactPointUse#work "work"
// Description of the organization
* extension[org-description].valueString = "This community services agency contracts with various organizations to provide transport services for the elderly and low-income clients, to and from medical appointments, various assisted living facilities, as well as to grocery shopping and other activites to stay active and connected."
// Community-based organizations identified using their IRS Tax ID at the present time
* identifier[IRS].use = IdentifierUse#official
* identifier[IRS].type = IdentifierType#TAX
// * identifier[IRS].system = "urn:us:gov:irs"
// * identifier[IRS] ^patternIdentifier.system = "urn:us:gov:irs"
* identifier[IRS].value =  "xx-xxxxxxx"
* identifier[IRS].period.start = 2020-11-01
* identifier[IRS].assigner.display = "http://www.irs.gov"
* contact.name.use = ContactNameUse#usual "usual"
* contact.name.family = "Cunningham"
* contact.name.given = "Harry"
* contact.telecom.extension[org-contactinfo].extension[title].valueString = "Manager, Automotive Repairs"
* contact.telecom.extension[org-contactinfo].extension[department].valueString = "Transportation Services"
* contact.telecom.extension[org-contactinfo].extension[email].valueString = "sryan@whistlestop.org"
* contact.telecom.system = #phone
* contact.telecom.value = "(999)-555-2222"
* contact.telecom.use = ContactPointUse#work "work"
* contact[1].name.use = ContactNameUse#usual "usual"
* contact[1].name.family = "Ryan"
* contact[1].name.given = "Samantha"
* contact[1].telecom.extension[org-contactinfo].extension[title].valueString = "Director, Transportation Services"
* contact[1].telecom.extension[org-contactinfo].extension[department].valueString = "Executive Services"
* contact[1].telecom.extension[org-contactinfo].extension[email].valueString = "sryan@whistlestop.org"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "(999)-555-7321"
* contact[1].telecom.use = ContactPointUse#work "work"
/* * extension[qualification].extension[code] = $NUCCProviderTaxonomy
* extension[qualification].extension[code].valueCodeableConcept.code = "342000000X"
* extension[qualification].extension[code].valueCode.display = "Transportation Network Company"
* extension[qualification].extension[status] = $QualificationStatusCS#active */



Instance: FoodBankLocation
InstanceOf: HSDLocation 
Description: "Locations associated with services provided by the Redwood Food Bank" 
Usage: #example    
* meta.profile = Canonical(HSDLocation) 
* meta.lastUpdated = "2023-08-24T13:26:22.0314215+00:00"
* status = #active 
* name = "Redwood Food Bank of Anytown California"
* managingOrganization = Reference(FoodBank)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#handiaccess
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "99999"
* address.district = "Sonoma"
* position.longitude =  38.294788
* position.latitude = -122.461510
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 20:00:00
* hoursOfOperation[1].daysOfWeek[0]  = #sat
* hoursOfOperation[1].daysOfWeek[1]  = #sun
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00

Instance: WhistlestopwheelsLocation
InstanceOf: HSDLocation 
Description: "Locations associated with services provided by Whistlestop Wheels" 
Usage: #example    
* meta.profile = Canonical(HSDLocation) 
* meta.lastUpdated = "2020-08-24T13:26:22.0314215+00:00"
* status = #active 
* name = "Whistlestop Wheels of Anytown USA"
* managingOrganization = Reference(WhistlestopWheels)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#mobility
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* address.line[0] = "999 South Avenue"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "99999"
* address.district = "Marin"
* position.longitude = -122.7400
* position.latitude = 38.0400
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 20:00:00
* hoursOfOperation[1].daysOfWeek[0]  = #sat
* hoursOfOperation[1].daysOfWeek[1]  = #sun
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00

Instance: MealsOnWheels
InstanceOf: HSDHealthcareService
Description: "Food assistance provided to the elderly and low income at their homes."
Usage: #example
* meta.profile =  Canonical(HSDHealthcareService) 
* meta.lastUpdated = "2023-08-24T11:26:22.0314215+00:00"
* active = true
* name = "Meals on Wheels"
* identifier.use = IdentifierUse#official
* category = $PlannetCategoryCS#home "Home Health"
* type = $PlannetTypeCS#548 "Food Relief/Food/Meals"
* providedBy = Reference(FoodBank)
* location[0] = Reference(FoodBankLocation)
* communication[0] = LANGUAGE#es "Spanish"
* communication[1] = LANGUAGE#en-US "English"
* communication[2] = LANGUAGE#zh "Chinese"

Instance: WhistlestopTransportationService
InstanceOf: HSDHealthcareService
Description: "Transportation services for the disabled and elderly."
Usage: #example
* meta.profile =  Canonical(HSDHealthcareService) 
* meta.lastUpdated = "2023-08-24T11:26:22.0314215+00:00"
* active = true
* name = "Meals on Wheels"
* category = $PlannetCategoryCS#trans "Transportation"
* type = $PlannetTypeCS#531 "Aged Care Transport"
* providedBy = Reference(WhistlestopWheels)
* location[0] = Reference(WhistlestopwheelsLocation)
* communication[0] = LANGUAGE#es "Spanish"
* communication[1] = LANGUAGE#en-US "English"

Instance: FoodPantryService
InstanceOf: HSDHealthcareService
Description: "Human and Social Services Resource provided by Community-Based Organization (CBO)"
Usage: #example
* meta.profile =  Canonical(HSDHealthcareService) 
* meta.lastUpdated = "2023-08-24T11:26:22.0314215+00:00"
* active = true
* name = "Food Pantry"
* category = $PlannetCategoryCS#home "Home Health"
* type = $PlannetTypeCS#344 "Food"
* providedBy = Reference(FoodBank)
* location[0] = Reference(FoodBankLocation)
* communication[0] = LANGUAGE#es "Spanish"
* communication[1] = LANGUAGE#ru "Russian"
* communication[2] = LANGUAGE#en-US "English"