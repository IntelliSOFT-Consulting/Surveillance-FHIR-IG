Alias: $variable = http://hl7.org/fhir/StructureDefinition/variable
Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control

Instance: Moh505SectionAB
InstanceOf: Questionnaire
Usage: #definition
Title: "MOH 505 Section A and B - Health Facility Weekly Reporting Form"
Description: "MOH 505 Health Facility Weekly Reporting Form - Section A and B for disease surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "MOH 505 - Health Facility Weekly Reporting Form"
* status = #draft

// Variables
* extension[+]
  * url = $variable
  * valueExpression
    * name = "countyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='a4-county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedSubCountyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='a3-sub-county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedWardName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819943434').answer.value.reference"

// ============================================================
// PAGE: Diseases, Conditions or Events Information
// ============================================================
* item[+]
  * linkId = "306799299"
  * text = "Diseases, Conditions or Events Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  // AEFI
  * item[+]
    * linkId = "745196148424"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #AEFI "AEFI"

  * item[+]
    * linkId = "under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "745196148424"
      * operator = #=
      * answerCoding = #AEFI "AEFI"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "745196148424"
      * operator = #=
      * answerCoding = #AEFI "AEFI"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "745196148424"
      * operator = #=
      * answerCoding = #AEFI "AEFI"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "745196148424"
      * operator = #=
      * answerCoding = #AEFI "AEFI"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Acute Jaundice
  * item[+]
    * linkId = "acute-jaundice"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"Acute Jaundice" "Acute Jaundice"

  * item[+]
    * linkId = "acute-jaundice-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "acute-jaundice"
      * operator = #=
      * answerCoding = #"Acute Jaundice" "Acute Jaundice"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "acute-jaundice-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "acute-jaundice"
      * operator = #=
      * answerCoding = #"Acute Jaundice" "Acute Jaundice"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "acute-jaundice-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "acute-jaundice"
      * operator = #=
      * answerCoding = #"Acute Jaundice" "Acute Jaundice"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "acute-jaundice-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "acute-jaundice"
      * operator = #=
      * answerCoding = #"Acute Jaundice" "Acute Jaundice"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Acute Malnutrition
  * item[+]
    * linkId = "acute-malnutrition"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"Acute Malnutrition" "Acute Malnutrition"

  * item[+]
    * linkId = "acute-malnutrition-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "acute-malnutrition"
      * operator = #=
      * answerCoding = #"Acute Malnutrition" "Acute Malnutrition"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "acute-malnutrition-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "acute-malnutrition"
      * operator = #=
      * answerCoding = #"Acute Malnutrition" "Acute Malnutrition"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "acute-malnutrition-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "acute-malnutrition"
      * operator = #=
      * answerCoding = #"Acute Malnutrition" "Acute Malnutrition"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "acute-malnutrition-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "acute-malnutrition"
      * operator = #=
      * answerCoding = #"Acute Malnutrition" "Acute Malnutrition"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // AFP (Poliomyelitis)
  * item[+]
    * linkId = "afp-poliomyelitis"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"AFP (Poliomyelitis)" "AFP (Poliomyelitis)"

  * item[+]
    * linkId = "afp-poliomyelitis-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "afp-poliomyelitis"
      * operator = #=
      * answerCoding = #"AFP (Poliomyelitis)" "AFP (Poliomyelitis)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "afp-poliomyelitis-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "afp-poliomyelitis"
      * operator = #=
      * answerCoding = #"AFP (Poliomyelitis)" "AFP (Poliomyelitis)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "afp-poliomyelitis-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "afp-poliomyelitis"
      * operator = #=
      * answerCoding = #"AFP (Poliomyelitis)" "AFP (Poliomyelitis)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "afp-poliomyelitis-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "afp-poliomyelitis"
      * operator = #=
      * answerCoding = #"AFP (Poliomyelitis)" "AFP (Poliomyelitis)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Anthrax
  * item[+]
    * linkId = "anthrax"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #Anthrax "Anthrax"

  * item[+]
    * linkId = "anthrax-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "anthrax"
      * operator = #=
      * answerCoding = #Anthrax "Anthrax"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "anthrax-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "anthrax"
      * operator = #=
      * answerCoding = #Anthrax "Anthrax"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "anthrax-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "anthrax"
      * operator = #=
      * answerCoding = #Anthrax "Anthrax"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "anthrax-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "anthrax"
      * operator = #=
      * answerCoding = #Anthrax "Anthrax"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Cholera
  * item[+]
    * linkId = "cholera"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #Cholera "Cholera"

  * item[+]
    * linkId = "cholera-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "cholera"
      * operator = #=
      * answerCoding = #Cholera "Cholera"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "cholera-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "cholera"
      * operator = #=
      * answerCoding = #Cholera "Cholera"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "cholera-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "cholera"
      * operator = #=
      * answerCoding = #Cholera "Cholera"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "cholera-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "cholera"
      * operator = #=
      * answerCoding = #Cholera "Cholera"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Chikungunya
  * item[+]
    * linkId = "chikungunya"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #Chikungunya "Chikungunya"

  * item[+]
    * linkId = "chikungunya-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "chikungunya"
      * operator = #=
      * answerCoding = #Chikungunya "Chikungunya"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "chikungunya-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "chikungunya"
      * operator = #=
      * answerCoding = #Chikungunya "Chikungunya"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "chikungunya-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "chikungunya"
      * operator = #=
      * answerCoding = #Chikungunya "Chikungunya"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "chikungunya-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "chikungunya"
      * operator = #=
      * answerCoding = #Chikungunya "Chikungunya"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // COVID-19
  * item[+]
    * linkId = "covid-19"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #COVID-19 "COVID-19"

  * item[+]
    * linkId = "covid-19-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "covid-19"
      * operator = #=
      * answerCoding = #COVID-19 "COVID-19"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "covid-19-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "covid-19"
      * operator = #=
      * answerCoding = #COVID-19 "COVID-19"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "covid-19-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "covid-19"
      * operator = #=
      * answerCoding = #COVID-19 "COVID-19"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "covid-19-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "covid-19"
      * operator = #=
      * answerCoding = #COVID-19 "COVID-19"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Dengue
  * item[+]
    * linkId = "dengue"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #Dengue "Dengue"

  * item[+]
    * linkId = "dengue-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "dengue"
      * operator = #=
      * answerCoding = #Dengue "Dengue"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "dengue-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "dengue"
      * operator = #=
      * answerCoding = #Dengue "Dengue"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "dengue-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "dengue"
      * operator = #=
      * answerCoding = #Dengue "Dengue"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "dengue-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "dengue"
      * operator = #=
      * answerCoding = #Dengue "Dengue"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Dysentery (Bacillary)
  * item[+]
    * linkId = "dysentery-bacillary"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"Dysentery (Bacillary)" "Dysentery (Bacillary)"

  * item[+]
    * linkId = "dysentery-bacillary-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "dysentery-bacillary"
      * operator = #=
      * answerCoding = #"Dysentery (Bacillary)" "Dysentery (Bacillary)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "dysentery-bacillary-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "dysentery-bacillary"
      * operator = #=
      * answerCoding = #"Dysentery (Bacillary)" "Dysentery (Bacillary)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "dysentery-bacillary-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "dysentery-bacillary"
      * operator = #=
      * answerCoding = #"Dysentery (Bacillary)" "Dysentery (Bacillary)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "dysentery-bacillary-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "dysentery-bacillary"
      * operator = #=
      * answerCoding = #"Dysentery (Bacillary)" "Dysentery (Bacillary)"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Guinea Worm Disease
  * item[+]
    * linkId = "guinea-worm-disease"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"Guinea Worm Disease" "Guinea Worm Disease"

  * item[+]
    * linkId = "guinea-worm-disease-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "guinea-worm-disease"
      * operator = #=
      * answerCoding = #"Guinea Worm Disease" "Guinea Worm Disease"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "guinea-worm-disease-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "guinea-worm-disease"
      * operator = #=
      * answerCoding = #"Guinea Worm Disease" "Guinea Worm Disease"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "guinea-worm-disease-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "guinea-worm-disease"
      * operator = #=
      * answerCoding = #"Guinea Worm Disease" "Guinea Worm Disease"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "guinea-worm-disease-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "guinea-worm-disease"
      * operator = #=
      * answerCoding = #"Guinea Worm Disease" "Guinea Worm Disease"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Measles
  * item[+]
    * linkId = "measles"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #Measles "Measles"

  * item[+]
    * linkId = "measles-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "measles"
      * operator = #=
      * answerCoding = #Measles "Measles"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "measles-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "measles"
      * operator = #=
      * answerCoding = #Measles "Measles"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "measles-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "measles"
      * operator = #=
      * answerCoding = #Measles "Measles"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "measles-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "measles"
      * operator = #=
      * answerCoding = #Measles "Measles"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Suspected Malaria
  * item[+]
    * linkId = "suspected-malaria"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"Suspected Malaria" "Suspected Malaria"

  * item[+]
    * linkId = "suspected-malaria-under5-cases"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "suspected-malaria"
      * operator = #=
      * answerCoding = #"Suspected Malaria" "Suspected Malaria"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "suspected-malaria-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "suspected-malaria"
      * operator = #=
      * answerCoding = #"Suspected Malaria" "Suspected Malaria"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "suspected-malaria-over5-cases"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "suspected-malaria"
      * operator = #=
      * answerCoding = #"Suspected Malaria" "Suspected Malaria"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "suspected-malaria-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "suspected-malaria"
      * operator = #=
      * answerCoding = #"Suspected Malaria" "Suspected Malaria"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Deaths due to Malaria
  * item[+]
    * linkId = "deaths-due-to-malaria"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #"Deaths due to Malaria" "Deaths due to Malaria"

  * item[+]
    * linkId = "deaths-due-to-malaria-under5-deaths"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "deaths-due-to-malaria"
      * operator = #=
      * answerCoding = #"Deaths due to Malaria" "Deaths due to Malaria"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  * item[+]
    * linkId = "deaths-due-to-malaria-over5-deaths"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "deaths-due-to-malaria"
      * operator = #=
      * answerCoding = #"Deaths due to Malaria" "Deaths due to Malaria"
    * extension[+]
      * url = $maxValue
      * valueInteger = 99

  // Bacterial Meningitis
  * item[+]
    * linkId = "912271576972"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #bacterial-001 "Bacterial Meningitis"

  * item[+]
    * linkId = "871055915491"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "912271576972"
      * operator = #=
      * answerCoding = #bacterial-001 "Bacterial Meningitis"

  * item[+]
    * linkId = "388760057096"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "912271576972"
      * operator = #=
      * answerCoding = #bacterial-001 "Bacterial Meningitis"

  * item[+]
    * linkId = "483347883552"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "912271576972"
      * operator = #=
      * answerCoding = #bacterial-001 "Bacterial Meningitis"

  * item[+]
    * linkId = "983942974596"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "912271576972"
      * operator = #=
      * answerCoding = #bacterial-001 "Bacterial Meningitis"

  // Neonatal Deaths
  * item[+]
    * linkId = "475346107884"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #neonatal-deaths-01 "Neonatal deaths"

  * item[+]
    * linkId = "584270141338"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "475346107884"
      * operator = #=
      * answerCoding = #neonatal-deaths-01 "Neonatal deaths"

  // Neonatal Tetanus
  * item[+]
    * linkId = "328118347844"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #neonatal-tetanus-01 "Neonatal Tetanus"

  * item[+]
    * linkId = "535840524666"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "328118347844"
      * operator = #=
      * answerCoding = #neonatal-tetanus-01 "Neonatal Tetanus"

  * item[+]
    * linkId = "703609548617"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "328118347844"
      * operator = #=
      * answerCoding = #neonatal-tetanus-01 "Neonatal Tetanus"

  // Onchocerciasis
  * item[+]
    * linkId = "579664664652"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #onchocerciasis-01 "Onchocerciasis"

  * item[+]
    * linkId = "327509292099"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "579664664652"
      * operator = #=
      * answerCoding = #onchocerciasis-01 "Onchocerciasis"

  * item[+]
    * linkId = "928912977066"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "579664664652"
      * operator = #=
      * answerCoding = #onchocerciasis-01 "Onchocerciasis"

  * item[+]
    * linkId = "456099214566"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "579664664652"
      * operator = #=
      * answerCoding = #onchocerciasis-01 "Onchocerciasis"

  * item[+]
    * linkId = "749207004486"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "579664664652"
      * operator = #=
      * answerCoding = #onchocerciasis-01 "Onchocerciasis"

  // Plague
  * item[+]
    * linkId = "308989393594"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #plague-001 "Plague"

  * item[+]
    * linkId = "861185632766"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "308989393594"
      * operator = #=
      * answerCoding = #plague-001 "Plague"

  * item[+]
    * linkId = "527963568905"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "308989393594"
      * operator = #=
      * answerCoding = #plague-001 "Plague"

  * item[+]
    * linkId = "522287058576"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "308989393594"
      * operator = #=
      * answerCoding = #plague-001 "Plague"

  * item[+]
    * linkId = "767020876711"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "308989393594"
      * operator = #=
      * answerCoding = #plague-001 "Plague"

  // Rabies
  * item[+]
    * linkId = "530042020681"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #rabies-01 "Rabies"

  * item[+]
    * linkId = "429458582182"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "530042020681"
      * operator = #=
      * answerCoding = #rabies-01 "Rabies"

  * item[+]
    * linkId = "905150141868"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "530042020681"
      * operator = #=
      * answerCoding = #rabies-01 "Rabies"

  * item[+]
    * linkId = "387904256180"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "530042020681"
      * operator = #=
      * answerCoding = #rabies-01 "Rabies"

  * item[+]
    * linkId = "562965993138"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "530042020681"
      * operator = #=
      * answerCoding = #rabies-01 "Rabies"

  // Rift Valley Fever
  * item[+]
    * linkId = "275577537077"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #rvalley-001 "Rift Valley Fever"

  * item[+]
    * linkId = "323838584718"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "275577537077"
      * operator = #=
      * answerCoding = #rvalley-001 "Rift Valley Fever"

  * item[+]
    * linkId = "648517764763"
    * text = "< 5 years - Death"
    * type = #integer
    * enableWhen[+]
      * question = "275577537077"
      * operator = #=
      * answerCoding = #rvalley-001 "Rift Valley Fever"

  * item[+]
    * linkId = "744618342377"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "275577537077"
      * operator = #=
      * answerCoding = #rvalley-001 "Rift Valley Fever"

  * item[+]
    * linkId = "633791890892"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "275577537077"
      * operator = #=
      * answerCoding = #rvalley-001 "Rift Valley Fever"

  // SARI (Cluster ≥3 cases)
  * item[+]
    * linkId = "190531820152"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #sari-001 "SARI (Cluster ≥3 cases)"

  * item[+]
    * linkId = "187421454190"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "190531820152"
      * operator = #=
      * answerCoding = #sari-001 "SARI (Cluster ≥3 cases)"

  * item[+]
    * linkId = "913264965600"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "190531820152"
      * operator = #=
      * answerCoding = #sari-001 "SARI (Cluster ≥3 cases)"

  * item[+]
    * linkId = "457868958971"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "190531820152"
      * operator = #=
      * answerCoding = #sari-001 "SARI (Cluster ≥3 cases)"

  * item[+]
    * linkId = "707780066440"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "190531820152"
      * operator = #=
      * answerCoding = #sari-001 "SARI (Cluster ≥3 cases)"

  // Suspected MDR/XDR TB
  * item[+]
    * linkId = "247259460116"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #sus-mdrtb-01 "Suspected MDR/XDR TB"

  * item[+]
    * linkId = "405042028703"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "247259460116"
      * operator = #=
      * answerCoding = #sus-mdrtb-01 "Suspected MDR/XDR TB"

  * item[+]
    * linkId = "353646489103"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "247259460116"
      * operator = #=
      * answerCoding = #sus-mdrtb-01 "Suspected MDR/XDR TB"

  * item[+]
    * linkId = "814159240132"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "247259460116"
      * operator = #=
      * answerCoding = #sus-mdrtb-01 "Suspected MDR/XDR TB"

  * item[+]
    * linkId = "300851141211"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "247259460116"
      * operator = #=
      * answerCoding = #sus-mdrtb-01 "Suspected MDR/XDR TB"

  // Typhoid
  * item[+]
    * linkId = "999646592522"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #typhoid-01 "Typhoid"

  * item[+]
    * linkId = "644607660026"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "999646592522"
      * operator = #=
      * answerCoding = #typhoid-01 "Typhoid"

  * item[+]
    * linkId = "852318756537"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "999646592522"
      * operator = #=
      * answerCoding = #typhoid-01 "Typhoid"

  * item[+]
    * linkId = "154498634367"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "999646592522"
      * operator = #=
      * answerCoding = #typhoid-01 "Typhoid"

  * item[+]
    * linkId = "834781032739"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "999646592522"
      * operator = #=
      * answerCoding = #typhoid-01 "Typhoid"

  // VHF
  * item[+]
    * linkId = "253208219241"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #vhf-001 "VHF"

  * item[+]
    * linkId = "174646115502"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "253208219241"
      * operator = #=
      * answerCoding = #vhf-001 "VHF"

  * item[+]
    * linkId = "938639360599"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "253208219241"
      * operator = #=
      * answerCoding = #vhf-001 "VHF"

  * item[+]
    * linkId = "348108803545"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "253208219241"
      * operator = #=
      * answerCoding = #vhf-001 "VHF"

  * item[+]
    * linkId = "225148682326"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "253208219241"
      * operator = #=
      * answerCoding = #vhf-001 "VHF"

  // Yellow Fever
  * item[+]
    * linkId = "927616098552"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #yellow-fever-01 "Yellow Fever"

  * item[+]
    * linkId = "233263428018"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "927616098552"
      * operator = #=
      * answerCoding = #yellow-fever-01 "Yellow Fever"

  * item[+]
    * linkId = "106909693192"
    * text = "< 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "927616098552"
      * operator = #=
      * answerCoding = #yellow-fever-01 "Yellow Fever"

  * item[+]
    * linkId = "548126975266"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "927616098552"
      * operator = #=
      * answerCoding = #yellow-fever-01 "Yellow Fever"

  * item[+]
    * linkId = "987655215954"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "927616098552"
      * operator = #=
      * answerCoding = #yellow-fever-01 "Yellow Fever"

  // Zika Virus
  * item[+]
    * linkId = "751930533175"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #zika-001 "Zika Virus"

  * item[+]
    * linkId = "420006947029"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "751930533175"
      * operator = #=
      * answerCoding = #zika-001 "Zika Virus"

  * item[+]
    * linkId = "986642803777"
    * text = "< 5 years - Death"
    * type = #integer
    * enableWhen[+]
      * question = "751930533175"
      * operator = #=
      * answerCoding = #zika-001 "Zika Virus"

  * item[+]
    * linkId = "920507828586"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "751930533175"
      * operator = #=
      * answerCoding = #zika-001 "Zika Virus"

  * item[+]
    * linkId = "309011706825"
    * text = "≥ 5 years - Death"
    * type = #integer
    * enableWhen[+]
      * question = "751930533175"
      * operator = #=
      * answerCoding = #zika-001 "Zika Virus"

  // Others (Specify)
  * item[+]
    * linkId = "373223788626"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #others-Specify-01 "Others (Specify)"

  * item[+]
    * linkId = "585220688263"
    * text = "< 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "373223788626"
      * operator = #=
      * answerCoding = #others-Specify-01 "Others (Specify)"

  * item[+]
    * linkId = "732578632850"
    * text = "< 5 years - Death"
    * type = #integer
    * enableWhen[+]
      * question = "373223788626"
      * operator = #=
      * answerCoding = #others-Specify-01 "Others (Specify)"

  * item[+]
    * linkId = "493210056237"
    * text = "≥ 5 years - Cases"
    * type = #integer
    * enableWhen[+]
      * question = "373223788626"
      * operator = #=
      * answerCoding = #others-Specify-01 "Others (Specify)"

  * item[+]
    * linkId = "683538126910"
    * text = "≥ 5 years - Deaths"
    * type = #integer
    * enableWhen[+]
      * question = "373223788626"
      * operator = #=
      * answerCoding = #others-Specify-01 "Others (Specify)"
