Alias: $launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $variable = http://hl7.org/fhir/StructureDefinition/variable
Alias: $entryMode = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-entryMode
Alias: $hidden = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $choiceOrientation = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $entryFormat = http://hl7.org/fhir/StructureDefinition/entryFormat
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $validationText = http://ehelse.no/fhir/StructureDefinition/validationtext
Alias: $regex = http://hl7.org/fhir/StructureDefinition/regex
Alias: $constraint = http://hl7.org/fhir/StructureDefinition/questionnaire-constraint
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $answerExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression
Alias: $choiceColumn = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control
Alias: $launchContextCS = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance: Moh505
InstanceOf: Questionnaire
Usage: #definition
Title: "MOH 505 - Health Facility Weekly Reporting Form"
Description: "MOH 505 Health Facility Weekly Reporting Form for disease surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "MOH 505 - Health Facility Weekly Reporting Form"
* status = #draft
* subjectType = #Encounter

// Launch Context
* extension[+]
  * url = $launchContext
  * extension[+]
    * url = "name"
    * valueCoding = $launchContextCS#patient
  * extension[+]
    * url = "type"
    * valueCode = #Patient

// Variables
* extension[+]
  * url = $variable
  * valueExpression
    * name = "countyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='294367770999').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "patientCountyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='a4-county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "patientSubCountyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='a3-sub-county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedSubCountyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819946803642').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedWardName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819943434').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedFacilityName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819943434').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "assignedCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='user_county').answer.value"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "assignedRole"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='user_role').answer.value"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "assignedSubCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='user_sub_county').answer.value"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "assignedWard"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='user_ward').answer.value"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "assignedFacility"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='user_facility').answer.value"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedCountyNameCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='294367770999_county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedSubCountyNameCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819946803642_county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedWardNameCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819943434_county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedCountyNameNational"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='294367770999_national').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedSubCountyNameNational"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819946803642_national').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedWardNameNational"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819943434_national').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedCountyNameSubCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='294367770999_sub_county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedSubCountyNameSubCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819946803642_sub_county').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "selectedWardNameSubCounty"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='819943434_sub_county').answer.value.reference"

* extension[+]
  * url = $entryMode
  * valueCode = #prior-edit

// ============================================================
// PAGE 1: Reporting Site
// ============================================================
* item[+]
  * linkId = "151479012557"
  * text = "Reporting Site"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  // Display item
  * item[+]
    * linkId = "546255966914"
    * text = "Hospital/Facility Location"
    * type = #display

  // Hidden context items
  * item[+]
    * linkId = "user_role"
    * text = "User Role"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true

  * item[+]
    * linkId = "user_facility"
    * text = "User Facility"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true

  * item[+]
    * linkId = "user_ward"
    * text = "User Ward"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true

  * item[+]
    * linkId = "user_sub_county"
    * text = "User Sub County"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true

  * item[+]
    * linkId = "user_county"
    * text = "User County"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true

  // Facility level group (VACCINATOR)
  * item[+]
    * linkId = "facility_level"
    * text = " "
    * type = #group
    * enableWhen[+]
      * question = "user_role"
      * operator = #=
      * answerString = "VACCINATOR"

    * item[+]
      * linkId = "294367770999"
      * text = "County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803642"
      * text = "Sub County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedSubCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819943434"
      * text = "Ward"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedWard}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803677"
      * text = "Health Facility"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedFacility}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "438862163919"
      * text = "Type of health facility"
      * type = #choice
      * required = true
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
      * answerOption[+].valueCoding = #Private "Private"
      * answerOption[+].valueCoding = #Public "Public"
      * answerOption[+].valueCoding = #"Faith Based" "Faith Based"

  // Sub-county level group (SUBCOUNTY_DISEASE_SURVEILLANCE_OFFICER)
  * item[+]
    * linkId = "sub_county_level"
    * text = ""
    * type = #group
    * enableWhen[+]
      * question = "user_role"
      * operator = #=
      * answerString = "SUBCOUNTY_DISEASE_SURVEILLANCE_OFFICER"

    * item[+]
      * linkId = "294367770999_sub_county"
      * text = "County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803642_sub_county"
      * text = "Sub County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedSubCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819943434_sub_county"
      * text = "Ward"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedSubCountyNameSubCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803677_sub_county"
      * text = "Health Facility"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedWardNameSubCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "438862163919_sub_county"
      * text = "Type of health facility"
      * type = #choice
      * required = true
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
      * answerOption[+].valueCoding = #Private "Private"
      * answerOption[+].valueCoding = #Public "Public"
      * answerOption[+].valueCoding = #"Faith Based" "Faith Based"

  // County level group (COUNTY_DISEASE_SURVEILLANCE_OFFICER)
  * item[+]
    * linkId = "county_level"
    * text = " "
    * type = #group
    * enableWhen[+]
      * question = "user_role"
      * operator = #=
      * answerString = "COUNTY_DISEASE_SURVEILLANCE_OFFICER"

    * item[+]
      * linkId = "294367770999_county"
      * text = "County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?_id={{%assignedCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803642_county"
      * text = "Sub County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedCountyNameCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819943434_county"
      * text = "Ward"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedSubCountyNameCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803677_county"
      * text = "Health Facility"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedWardNameCounty}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "438862163919_county"
      * text = "Type of health facility"
      * type = #choice
      * required = true
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
      * answerOption[+].valueCoding = #Private "Private"
      * answerOption[+].valueCoding = #Public "Public"
      * answerOption[+].valueCoding = #"Faith Based" "Faith Based"

  // National level group (ADMINISTRATOR)
  * item[+]
    * linkId = "national_level"
    * text = " "
    * type = #group
    * enableWhen[+]
      * question = "user_role"
      * operator = #=
      * answerString = "ADMINISTRATOR"

    * item[+]
      * linkId = "294367770999_national"
      * text = "County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof=Location/0&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803642_national"
      * text = "Sub County"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedCountyNameNational}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819943434_national"
      * text = "Ward"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedSubCountyNameNational}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "819946803677_national"
      * text = "Health Facility"
      * type = #reference
      * required = true
      * extension[+]
        * url = $answerExpression
        * valueExpression
          * language = #application/x-fhir-query
          * expression = "Location?partof={{%selectedWardNameNational}}&_sort=name"
      * extension[+]
        * url = $choiceColumn
        * extension[+]
          * url = "path"
          * valueString = "name"
        * extension[+]
          * url = "forDisplay"
          * valueBoolean = true

    * item[+]
      * linkId = "438862163919_national"
      * text = "Type of health facility"
      * type = #choice
      * required = true
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
      * answerOption[+].valueCoding = #Private "Private"
      * answerOption[+].valueCoding = #Public "Public"
      * answerOption[+].valueCoding = #"Faith Based" "Faith Based"

  // Week Ending Date
  * item[+]
    * linkId = "728034137219"
    * text = "Week Ending Date"
    * type = #date
    * required = true
    * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-bmi#Observation.value[x]"
    * extension[+]
      * url = $entryFormat
      * valueString = "d/M/y"
    * extension[+]
      * url = $validationText
      * valueString = "Cannot be a date in the future"
    * extension[+]
      * url = $entryFormat
      * valueString = "yyyy-mm-dd"
    * extension[+]
      * url = $maxValue
      * valueDate.extension[+]
        * url = $cqfCalc
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

// ============================================================
// PAGE 2: Diseases, Conditions or Events Information
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
    * linkId = "aefi-summary"
    * text = "Were any AEFI cases reported?"
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
    * linkId = "aefi-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "aefi-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "aefi-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "aefi-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "aefi-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "aefi-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "aefi-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "aefi-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "aefi-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Bacterial Meningitis
  * item[+]
    * linkId = "bacterial-meningitis-summary"
    * text = "Were any Bacterial Meningitis cases reported?"
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
    * linkId = "bacterial-meningitis-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-summary-cases-under-5-if-no"
    * text = " Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "bacterial-meningitis-summary-cases-over-5-if-no"
    * text = " Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "bacterial-meningitis-summary-deaths-under-5-if-no"
    * text = " Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "bacterial-meningitis-summary-deaths-over-5-if-no"
    * text = " Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Acute Jaundice
  * item[+]
    * linkId = "acute-jaundice-summary"
    * text = "Were any Acute Jaundice cases reported?"
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
    * linkId = "acute-jaundice-cases-under-5"
    * text = " Under Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-jaundice-cases-over-5"
    * text = " Over Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-jaundice-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-jaundice-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-jaundice-summary-cases-under-5-if-no"
    * text = " Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "acute-jaundice-summary-cases-over-5-if-no"
    * text = " Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "acute-jaundice-summary-deaths-under-5-if-no"
    * text = " Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "acute-jaundice-summary-deaths-over-5-if-no"
    * text = " Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-jaundice-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Neonatal Deaths
  * item[+]
    * linkId = "neonatal-deaths-summary"
    * text = "Were any Neonatal Deaths cases reported?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"

  * item[+]
    * linkId = "neonatal-deaths-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "neonatal-deaths-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "neonatal-deaths-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * enableWhen[+]
      * question = "neonatal-deaths-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Acute Malnutrition
  * item[+]
    * linkId = "acute-malnutrition-summary"
    * text = "Were any Acute Malnutrition cases reported?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"

  * item[+]
    * linkId = "acute-malnutrition-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-malnutrition-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-malnutrition-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-malnutrition-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "acute-malnutrition-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "acute-malnutrition-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "acute-malnutrition-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "acute-malnutrition-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "acute-malnutrition-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Neonatal Tetanus
  * item[+]
    * linkId = "neonatal-tetanus-summary"
    * text = "Were any Neonatal Tetanus cases reported?"
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
    * linkId = "neonatal-tetanus-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "neonatal-tetanus-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "neonatal-tetanus-deaths-under-5"
    * text = "Under 5 Deaths "
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "neonatal-tetanus-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "neonatal-tetanus-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * enableWhen[+]
      * question = "neonatal-tetanus-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "neonatal-tetanus-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * enableWhen[+]
      * question = "neonatal-tetanus-summary"
      * operator = #=
      * answerCoding = #no "No"

  // AFP / Poliomyelitis
  * item[+]
    * linkId = "afp-poliomyelitis-summary"
    * text = "Were any Afp Poliomyelitis cases reported?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"

  * item[+]
    * linkId = "afp-poliomyelitis-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "afp-poliomyelitis-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "afp-poliomyelitis-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "afp-poliomyelitis-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "afp-poliomyelitis-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "afp-poliomyelitis-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "afp-poliomyelitis-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "afp-poliomyelitis-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "afp-poliomyelitis-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Onchocerciasis
  * item[+]
    * linkId = "onchocerciasis-summary"
    * text = "Were any Onchocerciasis cases reported?"
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
    * linkId = "onchocerciasis-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "onchocerciasis-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "onchocerciasis-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "onchocerciasis-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "onchocerciasis-summary-cases-under-5-if-no"
    * text = " Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "onchocerciasis-summary-cases-over-5-if-no"
    * text = " Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "onchocerciasis-summary-deaths-under-5-if-no"
    * text = " Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "onchocerciasis-summary-deaths-over-5-if-no"
    * text = " Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "onchocerciasis-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Plague
  * item[+]
    * linkId = "plague-summary"
    * text = "Were any Plague cases reported?"
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
    * linkId = "plague-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "plague-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "plague-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "plague-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "plague-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "plague-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "plague-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "plague-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "plague-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Anthrax
  * item[+]
    * linkId = "anthrax-summary"
    * text = "Were any Anthrax cases reported?"
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
    * linkId = "anthrax-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "anthrax-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "anthrax-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "anthrax-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "anthrax-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "anthrax-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "anthrax-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "anthrax-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "anthrax-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Rabies
  * item[+]
    * linkId = "rabies-summary"
    * text = "Were any Rabies cases reported?"
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
    * linkId = "rabies-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rabies-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rabies-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rabies-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rabies-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "rabies-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "rabies-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "rabies-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rabies-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Cholera
  * item[+]
    * linkId = "cholera-summary"
    * text = "Were any Cholera cases reported?"
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
    * linkId = "cholera-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "cholera-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "cholera-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "cholera-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "cholera-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "cholera-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "cholera-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "cholera-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "cholera-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Rift Valley Fever
  * item[+]
    * linkId = "rift-valley-fever-summary"
    * text = "Were any Rift Valley Fever cases reported?"
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
    * linkId = "rift-valley-fever-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rift-valley-fever-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rift-valley-fever-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rift-valley-fever-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "rift-valley-fever-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "rift-valley-fever-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "rift-valley-fever-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "rift-valley-fever-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "rift-valley-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Chikungunya
  * item[+]
    * linkId = "chikungunya-summary"
    * text = "Were any Chikungunya cases reported?"
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
    * linkId = "chikungunya-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "chikungunya-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "chikungunya-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "chikungunya-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "chikungunya-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "chikungunya-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "chikungunya-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "chikungunya-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "chikungunya-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Covid-19
  * item[+]
    * linkId = "covid--19-summary"
    * text = "Were any Covid  19 cases reported?"
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
    * linkId = "covid--19-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "covid--19-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "covid--19-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "covid--19-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "covid--19-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "covid--19-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "covid--19-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "covid--19-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "covid--19-summary"
      * operator = #=
      * answerCoding = #no "No"

  // SARI Cluster >= 3 Cases
  * item[+]
    * linkId = "sari-cluster-ge3-cases-summary"
    * text = "Were any Sari Cluster Ge3 Cases cases reported?"
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
    * linkId = "sari-cluster-ge3-cases-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "sari-cluster-ge3-cases-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "sari-cluster-ge3-cases-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "sari-cluster-ge3-cases-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "sari-cluster-ge3-cases-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "sari-cluster-ge3-cases-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "sari-cluster-ge3-cases-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "sari-cluster-ge3-cases-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sari-cluster-ge3-cases-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Dengue
  * item[+]
    * linkId = "dengue-summary"
    * text = "Were any Dengue cases reported?"
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
    * linkId = "dengue-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dengue-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dengue-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dengue-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dengue-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "dengue-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "dengue-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "dengue-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dengue-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Dysentery Bacillary
  * item[+]
    * linkId = "dysentery-bacillary-summary"
    * text = "Were any Dysentery Bacillary cases reported?"
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
    * linkId = "dysentery-bacillary-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-bacillary-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-bacillary-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-bacillary-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-bacillary-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "dysentery-bacillary-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "dysentery-bacillary-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "dysentery-bacillary-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Suspected MDR/XDR TB
  * item[+]
    * linkId = "suspected-mdr-xdr-tb-summary"
    * text = "Were any Suspected Mdr Xdr Tb cases reported?"
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
    * linkId = "suspected-mdr-xdr-tb-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "suspected-mdr-xdr-tb-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-mdr-xdr-tb-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Guinea Worm Disease
  * item[+]
    * linkId = "guinea-worm-disease-summary"
    * text = "Were any Guinea Worm Disease cases reported?"
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
    * linkId = "guinea-worm-disease-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "guinea-worm-disease-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "guinea-worm-disease-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "guinea-worm-disease-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "guinea-worm-disease-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "guinea-worm-disease-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "guinea-worm-disease-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "guinea-worm-disease-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "guinea-worm-disease-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Typhoid
  * item[+]
    * linkId = "typhoid-summary"
    * text = "Were any Typhoid cases reported?"
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
    * linkId = "typhoid-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "typhoid-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "typhoid-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "typhoid-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "typhoid-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "typhoid-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "typhoid-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "typhoid-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Measles
  * item[+]
    * linkId = "measles-summary"
    * text = "Were any Measles cases reported?"
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
    * linkId = "measles-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "measles-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "measles-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "measles-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "measles-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "measles-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "measles-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "measles-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "measles-summary"
      * operator = #=
      * answerCoding = #no "No"

  // VHF
  * item[+]
    * linkId = "vhf-summary"
    * text = "Were any Vhf cases reported?"
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
    * linkId = "vhf-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "vhf-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "vhf-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "vhf-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "vhf-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "vhf-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "vhf-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "vhf-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "vhf-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Suspected Malaria
  * item[+]
    * linkId = "suspected-malaria-summary"
    * text = "Were any Suspected Malaria cases reported?"
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
    * linkId = "suspected-malaria-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-malaria-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-malaria-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-malaria-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "suspected-malaria-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "suspected-malaria-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "suspected-malaria-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "suspected-malaria-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Yellow Fever
  * item[+]
    * linkId = "yellow-fever-summary"
    * text = "Were any Yellow Fever cases reported?"
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
    * linkId = "yellow-fever-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "yellow-fever-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "yellow-fever-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "yellow-fever-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "yellow-fever-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "yellow-fever-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "yellow-fever-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "yellow-fever-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "yellow-fever-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Deaths Due to Malaria
  * item[+]
    * linkId = "deaths-due-to-malaria-summary"
    * text = "Were any Deaths Due To Malaria cases reported?"
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
    * linkId = "deaths-due-to-malaria-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "deaths-due-to-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "deaths-due-to-malaria-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "deaths-due-to-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "deaths-due-to-malaria-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * enableWhen[+]
      * question = "deaths-due-to-malaria-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "deaths-due-to-malaria-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "deaths-due-to-malaria-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Zika Virus
  * item[+]
    * linkId = "zika-virus-summary"
    * text = "Were any Zika Virus cases reported?"
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
    * linkId = "zika-virus-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "zika-virus-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "zika-virus-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "zika-virus-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "zika-virus-summary-cases-under-5-if-no"
    * text = "Under 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "zika-virus-summary-cases-over-5-if-no"
    * text = "Over 5 Cases"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "zika-virus-summary-deaths-under-5-if-no"
    * text = "Under 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "zika-virus-summary-deaths-over-5-if-no"
    * text = "Over 5 Deaths"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "zika-virus-summary"
      * operator = #=
      * answerCoding = #no "No"

  // Others (Specify)
  * item[+]
    * linkId = "others-specify-summary"
    * text = "Were any Others Specify cases reported?"
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
    * linkId = "others-specify-cases-name"
    * text = "Others (Specify) "
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "others-specify-summary"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "others-specify-cases-under-5"
    * text = "Under 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "others-specify-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "others-specify-cases-over-5"
    * text = "Over 5 Cases"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "others-specify-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "others-specify-deaths-under-5"
    * text = "Under 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "others-specify-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "others-specify-deaths-over-5"
    * text = "Over 5 Deaths"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "others-specify-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

// ============================================================
// PAGE 3: Laboratory Surveillance
// ============================================================
* item[+]
  * linkId = "3067992989898"
  * text = "Laboratory Surveillance"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "malaria-tested-under-5"
    * text = "Malaria Microscopy Tested < 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "malaria-tested-over-5"
    * text = "Malaria Microscopy Tested \u2265 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "malaria-positive-under-5"
    * text = "Malaria Microscopy Positive < 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "malaria-positive-over-5"
    * text = "Malaria Microscopy Positive \u2265 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "malaria-total-tested"
    * text = "Malaria Microscopy Total Tested < 5"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "malaria-mrdt-under-5"
    * text = "Malaria mRDT < 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "malaria-mrdt-over-5"
    * text = "Malaria mRDT \u2265 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "suspected-malaria-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-tested-under-5"
    * text = "Dysentery Tested < 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-tested-over-5"
    * text = "Dysentery Tested \u2265 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "dysentery-positive-shigella"
    * text = "Dysentery Positive (S. dysenteriae)"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "dysentery-bacillary-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-csf-no"
    * text = "Bacterial Meningitis No CSF"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-csf-contaminated"
    * text = "Bacterial Meningitis No contaminated"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-tested-positive"
    * text = "Bacterial Meningitis Tested +ve"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nm"
    * text = "Bacterial Meningitis +ve Nm"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-spneum"
    * text = "Bacterial Meningitis +ve S. Pneum"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-hib"
    * text = "Bacterial Meningitis +ve Hib"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-sagalactiae"
    * text = "Bacterial Meningitis +ve S. agalactiae"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-csf-subtyped"
    * text = "Bacterial Meningitis No of CSF Sub-Typed"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nma"
    * text = "Bacterial Meningitis +ve Nm A"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nmb"
    * text = "Bacterial Meningitis +ve Nm B"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nmc"
    * text = "Bacterial Meningitis +ve Nm C"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nmw"
    * text = "Bacterial Meningitis +ve Nm W"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nmx"
    * text = "Bacterial Meningitis +ve Nm X"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "bacterial-meningitis-positive-nmy"
    * text = "Bacterial Meningitis +ve Nm Y"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "bacterial-meningitis-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "tuberculosis-mdr-xdr-tested-under-5"
    * text = "Tuberculosis (MDR/XDR) Tested < 5 years"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "tuberculosis-mdr-xdr-tested-over-5"
    * text = "Tuberculosis (MDR/XDR) Tested \u2265 5 years"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "tuberculosis-mdr-xdr-positive"
    * text = "Tuberculosis (MDR/XDR) Positive < 5 years"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "typhoid-tested-under-5"
    * text = "Typhoid Tested < 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999

  * item[+]
    * linkId = "typhoid-tested-over-5"
    * text = "Typhoid Tested \u2265 5 years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "typhoid-summary"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 999
