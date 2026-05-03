Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $choiceOrientation = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $validationText = http://ehelse.no/fhir/StructureDefinition/validationtext
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control

Instance: VlCaseSixMonthsFollowup
InstanceOf: Questionnaire
Usage: #definition
Title: "VL Case Six Months Follow-up"
Description: "Six months follow-up examination questionnaire for Visceral Leishmaniasis cases"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "VL Case Lab Information"
* status = #draft

// ============================================================
// PAGE: Six (6) Months Follow Up Examination
// ============================================================
* item[+]
  * linkId = "768949210140"
  * text = "Six (6) Months Follow Up Examination"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "598716788113"
    * text = "Date of Follow-up Examination"
    * type = #date
    * extension[+]
      * url = $validationText
      * valueString = "Cannot be a date in the future"
    * extension[+]
      * url = $maxValue
      * valueDate.extension[+]
        * url = $cqfCalc
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

  * item[+]
    * linkId = "854349915390"
    * text = "Final Treatment Outcome"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #treatment-out-001 "Final (definitive)cure"
    * answerOption[+].valueCoding = #treatment-out-002 "Relapse"
    * answerOption[+].valueCoding = #treatment-out-003 "Death"
    * answerOption[+].valueCoding = #treatment-out-004 "Lost to follow up"

  * item[+]
    * linkId = "207948215604"
    * text = "Cause of Death at Follow-up"
    * type = #choice
    * enableWhen[+]
      * question = "854349915390"
      * operator = #=
      * answerCoding = #treatment-out-003 "Death"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #death-cause-001 "Unknown"
    * answerOption[+].valueCoding = #death-cause-002 "VL"
    * answerOption[+].valueCoding = #death-cause-003 "HIV"
    * answerOption[+].valueCoding = #death-cause-004 "Non medical condition"
    * answerOption[+].valueCoding = #death-cause-005 "SAE"
    * answerOption[+].valueCoding = #death-cause-006 "Other disease (specify)"

  * item[+]
    * linkId = "598808996682"
    * text = "Any Signs or Symptoms of PKDL?"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"

  * item[+]
    * linkId = "601245092289"
    * text = "Remarks/Notes"
    * type = #string

  * item[+]
    * linkId = "183599052402"
    * text = "Clinician's Name (Follow-up)"
    * type = #string

  * item[+]
    * linkId = "864740040168"
    * text = "Clinician's Date (Follow-up)"
    * type = #date
    * extension[+]
      * url = $validationText
      * valueString = "Cannot be a date in the future"
    * extension[+]
      * url = $maxValue
      * valueDate.extension[+]
        * url = $cqfCalc
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

  * item[+]
    * linkId = "962832844710"
    * text = "Clinician's Signature (Follow-up)"
    * type = #string
