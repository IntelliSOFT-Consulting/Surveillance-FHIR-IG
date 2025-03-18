Alias: $causative-agent = http://example.org/StructureDefinition/causative-agent

Profile : ConditionProfile
Parent : Condition 
Description : "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
* extension contains
    $causative-agent named CausativeAgent 0..1 MS

* code 0..1 MS
  * ^short = "Condition or Diagnosis Code"
  * ^definition = "Records the condition, diagnosis, or reported disease."
* code.coding.code 0..1 MS
* code.coding.system 0..1 MS
* code.coding.display 0..1 MS  
* onsetDateTime 0..1 MS
  * ^short = "Date of symptom onset"  
  * ^definition = "Indicates when the symptoms first appeared."
* verificationStatus 0..1
  * ^short = "Verification status of the condition"
  * ^definition = "Indicates whether the diagnosis is confirmed, unconfirmed, or unknown."
* subject 1..1 MS  
* subject only Reference(SurveillancePatient)
  

Invariant: confirmedNT
Description: "Confirmed Neonatal Tetanus case."
Severity: #error
Expression: "verificationStatus='confirmed'"  

Invariant: unconfirmedNT
Description: "Not confirmed Neonatal Tetanus case."
Severity: #error
Expression: "verificationStatus='unconfirmed'"

Invariant: unknownNT
Description: "Unknown confirmation status of Neonatal Tetanus case."
Severity: #error
Expression: "verificationStatus='unknown'"


// Instance: DiagnosisCondition
// InstanceOf: ConditionProfile
// Description: "Instance representing a diagnosis."
// * code = $SNOMED#654321 "Diagnosis"