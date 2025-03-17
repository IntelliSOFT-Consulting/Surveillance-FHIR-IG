// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: SurveillancePatient
Parent: Patient
Description: "An example profile of the Patient resource."
* identifier 0..* 
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..1 MS
* name.given 1..1 MS
* name.family 1..1 MS
* birthDate 0..1 MS
* gender MS
* address.city MS 
* address.city ^short = "Patient's village or estate of residence"
* telecom.system 0..1 MS
* telecom.value 0..1 MS


// Instance: PatientExample
// InstanceOf: MyPatient
// Description: "An example of a patient with a license to krill."
// * name
//   * given[0] = "James"
//   * family = "Pond"