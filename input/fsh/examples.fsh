Alias: IRS = http://www.irs.gov
Alias: LANGUAGE = urn:ietf:bcp:47
Alias: $OpenEligibilityTaxonomyCS = http://terminology.hl7.org/CodeSystem/OpenEligibilityTaxonomy
Alias: ROLECODE = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: HumanSocialServiceOrganization
InstanceOf: HSDSOrganization
Description: "Community-Based Organization that provides food pantry services"     
Usage: #example
* meta.profile = Canonical(HSDSOrganization) 
* meta.lastUpdated = "2023-03-22T11:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Redwood Food Bank"
* type = OrgTypeCS#atyprv "Atypical Provider"
* telecom[0].system = #phone
* telecom[0].value = "(415)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://redwoodfoodbank.org/"
* telecom[1].rank = 1
* address.line[0] = "788 Meadow Avenue"
* address.city = "Anycity"
* address.state = "CA"
* address.postalCode = "94952"
* extension[org-description].valueString = "Community Services Agency of Northern California."


Instance: HumanSocialServiceLocation
InstanceOf: HSDSLocation 
Description: "Locations associated with Community-Based Organizations" 
Usage: #example    
* meta.profile = Canonical(HSDSLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "Redwood Food Bank of Northern California"
* type = ROLECODE#CSC "community service center"
* managingOrganization = Reference(HumanSocialServiceOrganization)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[0].extension[contactpoint-availabletime][1].extension[daysOfWeek][0].valueCode  = #sat
* telecom[0].extension[contactpoint-availabletime][1].extension[daysOfWeek][1].valueCode  = #sun 
* telecom[0].extension[contactpoint-availabletime][1].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][1].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://redwoodfoodbank.org/"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "94901"
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].allDay = true
* hoursOfOperation[1].daysOfWeek[0]  = #sat
* hoursOfOperation[1].daysOfWeek[1]  = #sun
* hoursOfOperation[1].openingTime = 08:00:00
* hoursOfOperation[1].closingTime = 17:00:00


Instance: HumanSocialServiceResource
InstanceOf: HSDSHealthcareService
Description: "Human and Social Services Resource provided by Community-Based Organization (CBO)"
Usage: #example
* meta.profile =  Canonical(HSDSHealthcareService) 
* meta.lastUpdated = "2023-03-22T11:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Food Pantry"
* category = $OpenEligibilityTaxonomyCS#1102 "Food"
* type = $OpenEligibilityTaxonomyCS#1130 "Food Pantry"
* providedBy = Reference(HumanSocialServiceOrganization)
* location[0] = Reference(HumanSocialServiceLocation)
* communication = LANGUAGE#es "Spanish"