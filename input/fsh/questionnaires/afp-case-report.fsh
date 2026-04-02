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

Instance: AfpCaseReport
InstanceOf: Questionnaire
Usage: #definition
Title: "AFP Case Report"
Description: "AFP Surveillance questionnaire for disease surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "AFP Surveillance"
* status = #draft

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

  * item[+]
    * linkId = "992818778559"
    * text = "EPID No"
    * type = #string
    * readOnly = true

// ============================================================
// PAGE 2: Case Demographics
// ============================================================
* item[+]
  * linkId = "359809652429"
  * text = "Case Demographics"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "873240407472"
    * text = "First name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "246751846436"
    * text = "Middle name"
    * type = #string

  * item[+]
    * linkId = "486402457213"
    * text = "Surname/Family name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "929966324957"
    * text = "Sex"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #male "Male"
    * answerOption[+].valueCoding = #female "Female"
    * item[+]
      * linkId = "262588607153_helpText"
      * text = " What is the sex of the patient?"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "442636360588"
    * text = "Date of Birth known or unknown?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #known "Known"
    * answerOption[+].valueCoding = #unknown "Unknown"
    * item[+]
      * linkId = "258271896621_helpText"
      * text = "Date of birth of the patient (DD/MM/YYYY)"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "257830485990"
    * text = "Date of Birth."
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "442636360588"
      * operator = #=
      * answerCoding = #known "Known"
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

  * item[+]
    * linkId = "age-at-onset"
    * text = "Age at Onset"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueString = "0"

  * item[+]
    * linkId = "492731638700"
    * text = "Age in Years"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "442636360588"
      * operator = #=
      * answerCoding = #unknown "Unknown"
    * extension[+]
      * url = $maxValue
      * valueInteger = 15

  * item[+]
    * linkId = "185726989867"
    * text = "Age in Months"
    * type = #integer
    * enableWhen[+]
      * question = "442636360588"
      * operator = #=
      * answerCoding = #unknown "Unknown"
    * extension[+]
      * url = $maxValue
      * valueInteger = 11

  * item[+]
    * linkId = "828303331247"
    * text = "Age in Days"
    * type = #integer
    * enableWhen[+]
      * question = "442636360588"
      * operator = #=
      * answerCoding = #unknown "Unknown"
    * extension[+]
      * url = $maxValue
      * valueInteger = 31

  * item[+]
    * linkId = "856448027666"
    * text = "Name of Parent/Guardian."
    * type = #string
    * required = true

  * item[+]
    * linkId = "576318206363"
    * text = "Telephone no. of parent/guardian."
    * type = #string
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#phone-number "Phone Number"
    * extension[+]
      * url = $validationText
      * valueString = "Enter a valid mobile number. Strings and special characters aren't allowed"
    * extension[+]
      * url = $regex
      * valueString = "^\\d{10,10}$"
    * item[+]
      * linkId = "telephone-hint"
      * text = "07xxxxxxxx"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#flyover "Fly-over"

  * item[+]
    * linkId = "a4-county"
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
    * linkId = "a3-sub-county"
    * text = "Sub County"
    * type = #reference
    * required = true
    * extension[+]
      * url = $answerExpression
      * valueExpression
        * language = #application/x-fhir-query
        * expression = "Location?partof={{%patientCountyName}}"
    * extension[+]
      * url = $choiceColumn
      * extension[+]
        * url = "path"
        * valueString = "name"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true

  * item[+]
    * linkId = "a2-ward"
    * text = "Ward"
    * type = #reference
    * required = true
    * extension[+]
      * url = $answerExpression
      * valueExpression
        * language = #application/x-fhir-query
        * expression = "Location?partof={{%patientSubCountyName}}&_sort=name"
    * extension[+]
      * url = $choiceColumn
      * extension[+]
        * url = "path"
        * valueString = "name"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true

  * item[+]
    * linkId = "residence-details"
    * text = "Residence (Village/Estate/Hse No)."
    * type = #string
    * required = true

  * item[+]
    * linkId = "946232932304"
    * text = "Neighborhood major landmark."
    * type = #string
    * required = true

  * item[+]
    * linkId = "487686858194"
    * text = "Name Nearest Health Facility."
    * type = #string
    * required = true

  * item[+]
    * linkId = "110761799063"
    * text = "Town/City/Location."
    * type = #string
    * required = true
    * item[+]
      * linkId = "509826995484_helpText"
      * text = " The specific town, city, or geographical location of residence."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

// ============================================================
// PAGE 3: Case Information
// ============================================================
* item[+]
  * linkId = "451840456960"
  * text = "Case Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "502488184403"
    * text = "Date of Investigation."
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
    * item[+]
      * linkId = "502488184403_helpText"
      * text = "The date when the affected individual first sought medical care."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "426321975477"
    * text = "Date of Notification."
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
        * valueString = "The date should be before the date of Investigation"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='502488184403').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be before the date of Investigation"
      * extension[+]
        * url = "location"
        * valueString = "502488184403"
    * item[+]
      * linkId = "426321975477_helpText"
      * text = "The date when the health facility reported the case to the sub-county and national health authorities."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "171292274939"
    * text = "Notified by? "
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding.display = "Health Worker/focal person in reporting site"
    * answerOption[+].valueCoding.display = "Community Health Volunteer"
    * answerOption[+].valueCoding.display = "Community Informant"
    * answerOption[+].valueCoding.display = "Alternative Health Care Provider(traditionalhealer, herbalist, etc))"

  * item[+]
    * linkId = "336643888536"
    * text = "Was the patient admitted?"
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
      * linkId = "336643888536_helpText"
      * text = "Was the patient hospitalized?"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "507199621281"
    * text = "Date of admission."
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "336643888536"
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
    * item[+]
      * linkId = "507199621281_helpText"
      * text = "The date when the patient was admitted to a healthcare facility."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "525996604810"
    * text = "IP/OP No."
    * type = #string
    * required = true
    * item[+]
      * linkId = "525996604810_helpText"
      * text = "Inpatient (IP) or Outpatient (OP) number assigned by the health facility."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

// ============================================================
// PAGE 4: Clinical Information
// ============================================================
* item[+]
  * linkId = "735342695013"
  * text = "Clinical Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "728034137219"
    * text = "Date of onset of paralysis."
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
        * valueString = "The date should be before the date of Investigation"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='502488184403').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be before the date of Investigation"
      * extension[+]
        * url = "location"
        * valueString = "502488184403"

  * item[+]
    * linkId = "932108244312"
    * text = "Fever at onset of paralysis?"
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
    * linkId = "396371836778"
    * text = "Is paralysis of sudden onset?"
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
    * linkId = "917680711879"
    * text = "Progressive Paralysis < 3 days?"
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
      * linkId = "917680711879_helpText"
      * text = "Was the progression of paralysis less than 3 days?"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "776980947995"
    * text = "Is paralysiss flaccid(floppy)?"
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
    * linkId = "679475123276"
    * text = "Is the paralysis asymmetric?"
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
    * linkId = "828001350323"
    * text = "Site of paralysis (check all that apply)"
    * type = #choice
    * required = true
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check Box"
    * answerOption[+].valueCoding = #la "LA"
    * answerOption[+].valueCoding = #ll "LL"
    * answerOption[+].valueCoding = #ra "RA"
    * answerOption[+].valueCoding = #rl "RL"
    * answerOption[+].valueCoding = #othersite "Other (Specify)"

  * item[+]
    * linkId = "815911574910"
    * text = "Specify other site of Paralysis"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "828001350323"
      * operator = #=
      * answerCoding = #othersite "Other (Specify)"

  * item[+]
    * linkId = "249388449455"
    * text = "Paralyzed limb sensitive to pain?"
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
    * linkId = "638592165160"
    * text = "Was there any injection just before onset of paralysis?"
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
    * linkId = "701518392602"
    * text = "Site of injection ( check all that applies)."
    * type = #choice
    * repeats = true
    * enableWhen[+]
      * question = "638592165160"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check Box"
    * answerOption[+].valueCoding = #arm "Left Arm"
    * answerOption[+].valueCoding = #forearm "Left Forearm"
    * answerOption[+].valueCoding = #thigh "Left Buttock"
    * answerOption[+].valueCoding = #leg "Left Thigh"
    * answerOption[+].valueCoding.display = "Left Leg"
    * answerOption[+].valueCoding.display = "Right Arm"
    * answerOption[+].valueCoding.display = "Right Forearm"
    * answerOption[+].valueCoding.display = "Right Buttock"
    * answerOption[+].valueCoding.display = "Right Thigh"
    * answerOption[+].valueCoding.display = "Right Leg"

  * item[+]
    * linkId = "564450145870"
    * text = "After Investigation, was this a true AFP?"
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
    * linkId = "212304573462"
    * text = "Outcome"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #hospitilized "Still Hospitized"
    * answerOption[+].valueCoding = #dead "Dead"
    * answerOption[+].valueCoding = #alive "Alive"

// ============================================================
// PAGE 5: Vaccination History for disease under investigation
// ============================================================
* item[+]
  * linkId = "446305443608"
  * text = "Vaccination History for disease under investigation"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "970455623029"
    * text = "Was the patient vaccinated against illness (including campaign)? "
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
    * answerOption[+].valueCoding = #unknown "Unknown"
    * item[+]
      * linkId = "970455623029_helpText"
      * text = "Was the patient vaccinated against illness (including campaign)? "
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "886125589225"
    * text = "Number of doses administered(Excluding birth OPV Dose)"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * item[+]
      * linkId = "886125589225_helpText"
      * text = "The total number of polio vaccines administered (excluding birth OPV)"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "413372430071"
    * text = "Date of OPV dose at birth."
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "970455623029"
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

  * item[+]
    * linkId = "671158128551"
    * text = "Date of 1st dose."
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "970455623029"
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

  * item[+]
    * linkId = "286826008175"
    * text = "Date of 2nd dose."
    * type = #date
    * enableWhen[+]
      * question = "886125589225"
      * operator = #>
      * answerInteger = 1
    * enableBehavior = #all
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
        * valueString = "The date should be after the date of the 1st dose"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='671158128551').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be after the date of the 1st dose"
      * extension[+]
        * url = "location"
        * valueString = "671158128551"

  * item[+]
    * linkId = "705067672267"
    * text = "Date of 3rd Dose."
    * type = #date
    * enableWhen[+]
      * question = "886125589225"
      * operator = #>
      * answerInteger = 2
    * enableBehavior = #all
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
        * valueString = "The date should be after the date of the 2nd dose"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='286826008175').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be after the date of the 2nd dose"
      * extension[+]
        * url = "location"
        * valueString = "286826008175"

  * item[+]
    * linkId = "974686716540"
    * text = "Date of 4th Dose."
    * type = #date
    * enableWhen[+]
      * question = "886125589225"
      * operator = #>
      * answerInteger = 3
    * enableBehavior = #all
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
        * valueString = "The date should be after the date of the 3rd dose"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='705067672267').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be after the date of the 3rd dose"
      * extension[+]
        * url = "location"
        * valueString = "705067672267"

  * item[+]
    * linkId = "597572769623"
    * text = "If more than 4 doses, date of last dose."
    * type = #date
    * enableWhen[+]
      * question = "886125589225"
      * operator = #>
      * answerInteger = 4
    * enableBehavior = #all
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
        * valueString = "The date should be after the date of the 4th dose"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='974686716540').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be after the date of the 4th dose"
      * extension[+]
        * url = "location"
        * valueString = "974686716540"
    * item[+]
      * linkId = "597572769623_helpText"
      * text = "If more than 4 doses, date of last dose."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "610048088023"
    * text = "Were there any vaccines given in last 30 days?"
    * type = #choice
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"
    * answerOption[+].valueCoding = #unknown "Unknown"
    * item[+]
      * linkId = "610048088023_helpText"
      * text = "Were there any vaccines given in the last 30 days?"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "960020813971"
    * text = "if yes, confirm number of days/interval"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "610048088023"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "910678978959"
    * text = "Date of last OPV dose received through SIA."
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "970455623029"
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
    * item[+]
      * linkId = "910678978959_helpText"
      * text = "Date of last OPV dose administered during Supplementary Immunization Activity (SIA) e.g. vaccination campaigns."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "774679982525"
    * text = "Total OPV (bOPV/mOPV2) doses received through SIA."
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * item[+]
      * linkId = "774679982525_helpText"
      * text = "Total number of OPV doses administered during Supplementary Immunization Activity (SIA) e.g. vaccination campaigns."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "440401067645"
    * text = "Total OPV (bOPV/mOPV2/) doses received through RI."
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * item[+]
      * linkId = "440401067645_helpText"
      * text = "Total number of OPV doses administered during Routine Immunization (RI)."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "799376740588"
    * text = "Total IPV doses received through SIA"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * item[+]
      * linkId = "799376740588_helpText"
      * text = "Total number of IPV doses administered during Supplementary Immunization Activity (SIA) e.g. vaccination campaigns."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "999346763880"
    * text = "Total IPV doses received through RI."
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * item[+]
      * linkId = "999346763880_helpText"
      * text = "Total number of IPV doses administered during Routine Immunization (RI)."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "766122504504"
    * text = "Date of last IPV dose received through RI or SIA."
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "970455623029"
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
    * item[+]
      * linkId = "766122504504_helpText"
      * text = "Date of last IPV dose administered during Routine Immunization (RI) OR Supplementary Immunization Activity (SIA) e.g. vaccination campaigns."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "650080600932"
    * text = "Source of RI vaccination Information."
    * type = #choice
    * required = true
    * enableWhen[+]
      * question = "970455623029"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #immunization-card "Immunization Card"
    * answerOption[+].valueCoding = #recall "Recall"
    * answerOption[+].valueCoding = #unknown "Unknown"
    * item[+]
      * linkId = "650080600932_helpText"
      * text = "What is the source of Routine Vaccination Information."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "511517897367"
    * text = "Immunocompromised status suspected?"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #yes "Yes"
    * answerOption[+].valueCoding = #no "No"
    * answerOption[+].valueCoding = #unknown "Unknown"

// ============================================================
// PAGE 6: Stool Specimen Collection Information
// ============================================================
* item[+]
  * linkId = "350784256533"
  * text = "Stool Specimen Collection Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "737703942433"
    * text = "Date 1st specimen collected."
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
        * valueString = "The date should be on or after the date of Investigation"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='502488184403').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be one or after the date of Investigation"
      * extension[+]
        * url = "location"
        * valueString = "502488184403"
    * item[+]
      * linkId = "737703942433_helpText"
      * text = "Collect the first date when the case is investigated."
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#help "Help-Button"

  * item[+]
    * linkId = "711388438654"
    * text = "Date 2nd specimen collected."
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
        * valueString = "The date should be on or after the date of 1st specimen collection"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='737703942433').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be on or after the date of 1st specimen collection"
      * extension[+]
        * url = "location"
        * valueString = "737703942433"

  * item[+]
    * linkId = "808177332790"
    * text = "Date Specimen sent to the national level"
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
        * valueString = "The date should be on or after the date of 2nd specimen collection"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='711388438654').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be on or after the date of 2nd specimen collection"
      * extension[+]
        * url = "location"
        * valueString = "711388438654"
