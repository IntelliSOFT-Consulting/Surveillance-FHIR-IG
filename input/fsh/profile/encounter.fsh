Profile : EncounterProfile
Parent : Encounter
Description : "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* identifier 0..* MS
* status 1..1 MS
* class 1..1 MS
* class.code 1..1 MS
* class.display 1..1 MS
* class.system 1..1 MS
* classHistory 0..* MS
* classHistory.period.start 1..1 MS
* classHistory.period.end 1..1 MS
* location.location only Reference(LocationProfile)
* location ^short = "Health facility where the treatment took place"