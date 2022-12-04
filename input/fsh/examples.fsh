Alias: IRS = http://www.irs.gov
Alias: LANGUAGE = urn:ietf:bcp:47
Alias: $211HSIS = http://211hsis.org
Alias: ROLECODE = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: hsds-organization
InstanceOf: HSDSOrganization
Description: "hsds-organization"     
* meta.profile = Canonical(HSDSOrganization) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "CHILDREN'S ADVOCACY CENTER"
// * type = OrgTypeCS#atyprv "Atypial Provider"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://childrensadvocacyctr.org/"
* telecom[1].rank = 1
* address.line[0] = "788 Meadow Avenue"
* address.city = "Anycity"
* address.state = "MI"
* address.postalCode = "49085"


Instance: hsds-location
InstanceOf: HSDSLocation 
Description: "hsds-location"     
* meta.profile = Canonical(HSDSLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "CHILDREN'S ADVOCACY CENTER OF SOUTHWEST MICHIGAN"
// * type = $V3RoleCode#CSC "community service center"
* type = ROLECODE#CSC "community service center"
* managingOrganization = Reference(hsds-organization)
// * extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
// * extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
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
* telecom[1].value = "https://www.orga.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "MI"
* address.postalCode = "49127-1234"
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

Instance: hsds-service
InstanceOf: HSDSHealthcareService
Description: "hsds-service"  
* meta.profile = Canonical(HSDSHealthcareService)
* meta.lastUpdated = "2017-01-01T00:00:00Z"
* active = true
* name = "Child Abuse Prevention Service"
// * extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
// * extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
// * extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* category = $211HSIS#LF "Health Screening/Diagnostic Services" 
* providedBy = Reference(hsds-organization)
* location[0] = Reference(hsds-location)
* communication = LANGUAGE#es "Spanish"
* telecom.extension[via-intermediary].valueReference = Reference(hsds-organization)