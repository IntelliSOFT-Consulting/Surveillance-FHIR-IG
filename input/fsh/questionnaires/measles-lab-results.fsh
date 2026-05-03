Alias: $launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $hidden = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $choiceOrientation = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $entryFormat = http://hl7.org/fhir/StructureDefinition/entryFormat
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $validationText = http://ehelse.no/fhir/StructureDefinition/validationtext
Alias: $constraint = http://hl7.org/fhir/StructureDefinition/questionnaire-constraint
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control
Alias: $launchContextCS = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance: MeaslesLabResults
InstanceOf: Questionnaire
Usage: #definition
Title: "Measles Lab Results"
Description: "Lab information questionnaire for Measles surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "Lab Information"
* status = #active

* extension[+]
  * url = $launchContext
  * extension[+]
    * url = "name"
    * valueCoding = $launchContextCS#client "Client as a Patient"
  * extension[+]
    * url = "type"
    * valueCode = #Patient

// ============================================================
// Flat items (no pages)
// ============================================================
* item[+]
  * linkId = "8732404074721"
  * text = "Lab ID No"
  * type = #string
  * required = true

* item[+]
  * linkId = "718251724172"
  * text = "Date specimen sent to lab"
  * type = #date
  * readOnly = true
  * extension[+]
    * url = $hidden
    * valueBoolean = true

* item[+]
  * linkId = "date-specimen-received"
  * text = "Date specimen received in lab"
  * type = #date
  * extension[+]
    * url = $entryFormat
    * valueString = "d/M/y"
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
  * extension[+]
    * url = $constraint
    * extension[+]
      * url = "key"
      * valueId = "constraint-1"
    * extension[+]
      * url = "requirements"
      * valueString = "The date should be after the date the specimen was sent to the lab"
    * extension[+]
      * url = "severity"
      * valueCode = #error
    * extension[+]
      * url = "expression"
      * valueString = "%context.answer.value >= %resource.descendants().where(linkId='718251724172').answer.value"
    * extension[+]
      * url = "human"
      * valueString = "The date should be after the date the specimen was sent to the lab"
    * extension[+]
      * url = "location"
      * valueString = "718251724172"

* item[+]
  * linkId = "specimen-condition"
  * text = "Specimen Condition"
  * type = #choice
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
  * extension[+]
    * url = $choiceOrientation
    * valueCode = #horizontal
  * answerOption[+].valueCoding = #Adequate "Adequate"
  * answerOption[+].valueCoding = #Inadequate "Inadequate"

* item[+]
  * linkId = "469240673826"
  * text = "Lab Results"
  * type = #display

* item[+]
  * linkId = "measles-igm"
  * text = "Measles IgM results"
  * type = #choice
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
  * answerOption[+].valueCoding = #Positive "Positive"
  * answerOption[+].valueCoding = #Negative "Negative"
  * answerOption[+].valueCoding = #Indeterminate "Indeterminate"
  * answerOption[+].valueCoding = #"Not Done" "Not Done"
  * answerOption[+].valueCoding = #Pending "Pending"
  * answerOption[+].valueCoding = #Unknown "Unknown"

* item[+]
  * linkId = "rubella-igm"
  * text = "Rubella IgM results"
  * type = #choice
  * enableWhen[+]
    * question = "measles-igm"
    * operator = #!=
    * answerCoding = #Positive "Positive"
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
  * answerOption[+].valueCoding = #Positive "Positive"
  * answerOption[+].valueCoding = #Negative "Negative"
  * answerOption[+].valueCoding = #Indeterminate "Indeterminate"
  * answerOption[+].valueCoding = #"Not Done" "Not Done"
  * answerOption[+].valueCoding = #Pending "Pending"
  * answerOption[+].valueCoding = #Unknown "Unknown"

* item[+]
  * linkId = "date-lab-sent-results"
  * text = "Date lab sent out results to EPI/Surv Unit"
  * type = #date
  * required = true
  * extension[+]
    * url = $entryFormat
    * valueString = "d/M/y"
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
  * extension[+]
    * url = $constraint
    * extension[+]
      * url = "key"
      * valueId = "constraint-1"
    * extension[+]
      * url = "requirements"
      * valueString = "The date should be after the date the specimen was received at the lab"
    * extension[+]
      * url = "severity"
      * valueCode = #error
    * extension[+]
      * url = "expression"
      * valueString = "%context.answer.value >= %resource.descendants().where(linkId='date-specimen-received').answer.value"
    * extension[+]
      * url = "human"
      * valueString = "The date should be after the date the specimen was received at the lab"
    * extension[+]
      * url = "location"
      * valueString = "date-specimen-received"

* item[+]
  * linkId = "139172422437"
  * text = "Was specimen sent to regional lab?"
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
  * linkId = "655865451155"
  * text = "Date Serum specimen was sent to regional lab for IgM confirmation"
  * type = #date
  * required = true
  * enableWhen[+]
    * question = "139172422437"
    * operator = #=
    * answerCoding = #yes "Yes"
  * extension[+]
    * url = $entryFormat
    * valueString = "d/M/y"
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
  * extension[+]
    * url = $constraint
    * extension[+]
      * url = "key"
      * valueId = "constraint-1"
    * extension[+]
      * url = "requirements"
      * valueString = "The date should be after the date the specimen was received at the lab"
    * extension[+]
      * url = "severity"
      * valueCode = #error
    * extension[+]
      * url = "expression"
      * valueString = "%context.answer.value >= %resource.descendants().where(linkId='date-specimen-received').answer.value"
    * extension[+]
      * url = "human"
      * valueString = "The date should be after the date the specimen was received at the lab"
    * extension[+]
      * url = "location"
      * valueString = "date-specimen-received"

* item[+]
  * linkId = "final-classification"
  * text = "Final Classification. Case classification after investigation (e.g., confirmed, compatible, discarded)"
  * type = #choice
  * enableWhen[+]
    * question = "measles-igm"
    * operator = #!=
    * answerCoding = #Positive "Positive"
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
  * extension[+]
    * url = $hidden
    * valueBoolean = true
  * initial[+].valueCoding = #lab-results-pending "Lab results pending"
