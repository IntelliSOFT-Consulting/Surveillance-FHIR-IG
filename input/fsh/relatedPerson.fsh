Profile: RelatedPersonProfile
Parent: RelatedPerson
Description: "Information about a person involved in the care of a patient who is not the target of healthcare and does not have formal responsibility in the care process."
* patient 1..1 MS
* patient only Reference(SurveillancePatient) 
* name 1..1 MS
* name.given 1..1 MS
* name.family 1..1 MS
* telecom MS