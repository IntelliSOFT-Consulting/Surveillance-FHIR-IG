Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control

Instance: VlCaseLabInformation
InstanceOf: Questionnaire
Usage: #definition
Title: "VL Case Lab Information"
Description: "Laboratory investigation information for Visceral Leishmaniasis cases"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "VL Case Lab Information"
* status = #draft

// ============================================================
// PAGE: Laboratory Information
// ============================================================
* item[+]
  * linkId = "868001487252"
  * text = "Laboratory Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "262857834508"
    * text = "HIV Status"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #positive "Positive"
    * answerOption[+].valueCoding = #negative "Negative"
    * answerOption[+].valueCoding = #unknown "Unknown"
    * answerOption[+].valueCoding = #"Not Done" "Not Done"

  * item[+]
    * linkId = "286501145394"
    * text = "Rapid Diagnostic Test (rK 39) Result"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #positive "Positive"
    * answerOption[+].valueCoding = #negative "Negative"
    * answerOption[+].valueCoding = #notdone "Not done"
    * answerOption[+].valueCoding = #inconclusive "Inconclusive"

  * item[+]
    * linkId = "728272640347"
    * text = "Haemoglobin Level (g/dL)"
    * type = #decimal
    * required = true

  * item[+]
    * linkId = "839711142610"
    * text = "DAT Result"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #dt-results-001 "Not Done"
    * answerOption[+].valueCoding = #dt-results-002 "Positive"
    * answerOption[+].valueCoding = #dt-results-003 "Negative"
    * answerOption[+].valueCoding = #dt-results-004 "Borderline"

  * item[+]
    * linkId = "521591954015"
    * text = "Titre"
    * type = #decimal
    * required = true
    * enableWhen[+]
      * question = "839711142610"
      * operator = #=
      * answerCoding = #dt-results-002 "Positive"
    * enableWhen[+]
      * question = "839711142610"
      * operator = #=
      * answerCoding = #dt-results-003 "Negative"
    * enableWhen[+]
      * question = "839711142610"
      * operator = #=
      * answerCoding = #dt-results-004 "Borderline"
    * enableBehavior = #any

  * item[+]
    * linkId = "501687416648"
    * text = "Tissue Aspiration Type"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #tis-asp-001 "Not done"
    * answerOption[+].valueCoding = #tis-asp-002 "Bone Marrow"
    * answerOption[+].valueCoding = #tis-asp-003 "Lymph Node"
    * answerOption[+].valueCoding = #tis-asp-004 "Spleen"

  * item[+]
    * linkId = "108406555539"
    * text = "Splenic/Bone Marrow Aspirate Result"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #positive "Positive"
    * answerOption[+].valueCoding = #negative "Negative"
    * answerOption[+].valueCoding = #notdone "Not done"

  * item[+]
    * linkId = "320819009291"
    * text = "Microscopy Results"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #positive "Positive"
    * answerOption[+].valueCoding = #negative "Negative"
    * answerOption[+].valueCoding = #notdone "Not done"

  * item[+]
    * linkId = "625317757173"
    * text = "Microscopy Grading"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #micro-grd-001 "1+: 1-10/1000 fields"
    * answerOption[+].valueCoding = #micro-grd-002 "2+: 1-10/100 fields"
    * answerOption[+].valueCoding = #micro-grd-003 "3+: 1-10/10 fields"
    * answerOption[+].valueCoding = #micro-grd-004 "4+: 1-10/1 fields"
    * answerOption[+].valueCoding = #micro-grd-005 "5+: >10-100/1 fields"
    * answerOption[+].valueCoding = #micro-grd-006 "6+: >100/1 fields"

  * item[+]
    * linkId = "655245793432"
    * text = "Final Diagnosis / Patient Category"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #diag-cat-001 "Primary VL"
    * answerOption[+].valueCoding = #diag-cat-002 "Relapse"
    * answerOption[+].valueCoding = #diag-cat-003 "PKDL"
    * answerOption[+].valueCoding = #diag-cat-004 "Other (specify)"

  * item[+]
    * linkId = "843481153132"
    * text = "Specify Diagnosis"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "655245793432"
      * operator = #=
      * answerCoding = #diag-cat-004 "Other (specify)"

  * item[+]
    * linkId = "404917028358"
    * text = "Method of Diagnosis"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #RDT "RDT"
    * answerOption[+].valueCoding = #DAT "DAT"
    * answerOption[+].valueCoding = #Microscopy "Microscopy"
    * answerOption[+].valueCoding = #"Clinical Examination" "Clinical Examination"
