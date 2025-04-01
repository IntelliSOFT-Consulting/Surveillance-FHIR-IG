Profile: ServiceRequestProfile
Parent: ServiceRequest
Description: "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."
* identifier 0..*
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status 1..1 MS
* intent 1..1 MS
* category 0..* MS
* category.coding.code 1..1 MS
* category.coding.display 1..1 MS
* category.coding.system 1..1 MS
* code 0..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* code.coding.system 1..1 MS
* subject only Reference(SurveillancePatient)
* encounter only Reference (EncounterProfile)
* locationReference only Reference(LocationProfile)
  * ^short = "Where the patient has been referred for further management"   
* requester only Reference(OrganizationProfile)