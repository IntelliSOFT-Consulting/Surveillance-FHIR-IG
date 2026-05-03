Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $choiceOrientation = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $validationText = http://ehelse.no/fhir/StructureDefinition/validationtext
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control

Instance: VlCaseHospitalization
InstanceOf: Questionnaire
Usage: #definition
Title: "VL Case Hospitalization"
Description: "Hospitalization and treatment information for Visceral Leishmaniasis cases"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "VL Case Lab Information"
* status = #draft

// ============================================================
// PAGE: Treatment/Hospitalization
// ============================================================
* item[+]
  * linkId = "782742635664"
  * text = "Treatment/Hospitilazation"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "428237064956"
    * text = "IP No"
    * type = #string
    * required = true

  * item[+]
    * linkId = "272556667885"
    * text = "Hospital Ward"
    * type = #string
    * required = true

  * item[+]
    * linkId = "885705999856"
    * text = "Date of Admission"
    * type = #date
    * required = true
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
    * linkId = "150613899880"
    * text = "Date Leishmaniasis Treatment Started"
    * type = #date
    * required = true
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
    * linkId = "733604782646"
    * text = "Treatment Regimen"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #reg-001 "Combination (SSG + Paramomycin)(17 days)"
    * answerOption[+].valueCoding = #reg-002 "Pentostam (SSG) (30 days)"
    * answerOption[+].valueCoding = #reg-003 "Glucantime"
    * answerOption[+].valueCoding = #reg-004 "Liposomal Amphotericin B (6-10 days)"
    * answerOption[+].valueCoding = #reg-005 "Other (Specify)."

  * item[+]
    * linkId = "498949031326"
    * text = "Other Treatment Regimen ( Specify)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "733604782646"
      * operator = #=
      * answerCoding = #reg-005 "Other (Specify)."

  * item[+]
    * linkId = "regimen-dosage"
    * text = "Treatment Regimen Dosage"
    * type = #decimal
    * required = true

  * item[+]
    * linkId = "175945763878"
    * text = "Number of Treatment Days"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #trtemnt-001 "6-10 Days"
    * answerOption[+].valueCoding = #trtemnt-002 "17 Days"
    * answerOption[+].valueCoding = #trtemnt-003 "30 Days"
    * answerOption[+].valueCoding = #trtemnt-004 "Other (Specify)"

  * item[+]
    * linkId = "686824046139"
    * text = "Number of treatment days (Specify)"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "175945763878"
      * operator = #=
      * answerCoding = #trtemnt-004 "Other (Specify)"

  * item[+]
    * linkId = "723427815459"
    * text = "Was Treatment Completed?"
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
    * linkId = "342763225855"
    * text = "Reason for Incomplete Treatment"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "723427815459"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "708058904265"
    * text = "Initial Treatment Outcome"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #outcome-001 "Initial cure"
    * answerOption[+].valueCoding = #outcome-002 "Probable non-response"
    * answerOption[+].valueCoding = #outcome-003 "Confirmed non-response"
    * answerOption[+].valueCoding = #outcome-004 "Default"
    * answerOption[+].valueCoding = #outcome-005 "Death"

  * item[+]
    * linkId = "131738268669"
    * text = "Cause of Death"
    * type = #choice
    * required = true
    * enableWhen[+]
      * question = "708058904265"
      * operator = #=
      * answerCoding = #outcome-005 "Death"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #death-cause-001 "Unknown"
    * answerOption[+].valueCoding = #death-cause-002 "VL"
    * answerOption[+].valueCoding = #death-cause-003 "HIV"
    * answerOption[+].valueCoding = #death-cause-004 "Other disease"
    * answerOption[+].valueCoding = #death-cause-005 "SAE"
    * answerOption[+].valueCoding = #death-cause-006 "Non-medical condition"

  * item[+]
    * linkId = "884379481934"
    * text = "Was there any reported severe adverse event of drug(s) used?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"

  * item[+]
    * linkId = "560909523868"
    * text = "Input Name(s) of Drug Causing Adverse Event"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "884379481934"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "396444399071"
    * text = "Indicate Description of Severe Adverse Event"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "884379481934"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "904748389038"
    * text = "Any other condition(s) treated during Initial VL treatment?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"

  * item[+]
    * linkId = "922498480736"
    * text = "Name of Other Condition"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "904748389038"
      * operator = #=
      * answerCoding = #yes "Yes"
