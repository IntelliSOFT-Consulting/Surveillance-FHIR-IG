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

Instance: MeaslesCaseReport
InstanceOf: Questionnaire
Usage: #definition
Title: "Measles Case Report"
Description: "Measles Case Report questionnaire for disease surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "Measles Case Report"
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
  * linkId = "670954892057"
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
    * linkId = "442636360588"
    * text = "Date of birth known or unknown"
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
    * linkId = "257830485990"
    * text = "Date of Birth"
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
      * valueInteger = 120

  * item[+]
    * linkId = "185726989867"
    * text = "Months"
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
    * text = "Days"
    * type = #integer
    * enableWhen[+]
      * question = "442636360588"
      * operator = #=
      * answerCoding = #unknown "Unknown"
    * extension[+]
      * url = $maxValue
      * valueInteger = 31

  * item[+]
    * linkId = "residence"
    * text = "Residence"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #Urban "Urban"
    * answerOption[+].valueCoding = #Rural "Rural"

  * item[+]
    * linkId = "422935041274"
    * text = "Tracer Information"
    * type = #display

  * item[+]
    * linkId = "parent"
    * text = "Parent / Guardian Name"
    * type = #string
    * required = true

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
        * expression = "Location?partof={{%patientSubCountyName}}"
    * extension[+]
      * url = $choiceColumn
      * extension[+]
        * url = "path"
        * valueString = "name"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true

  * item[+]
    * linkId = "242811643559"
    * text = "Residence or Village"
    * type = #string

  * item[+]
    * linkId = "946232932304"
    * text = "Neighborhood major landmark"
    * type = #string
    * required = true

  * item[+]
    * linkId = "424111786438"
    * text = "Street/Plot/Estate/S. location"
    * type = #string
    * required = true

  * item[+]
    * linkId = "754217593839"
    * text = "Telephone No of parent/guardian"
    * type = #string
    * extension[+]
      * url = $validationText
      * valueString = "Enter a valid mobile number. Strings and special characters aren't allowed"
    * extension[+]
      * url = $regex
      * valueString = "^\\d{10,10}$"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#phone-number "Phone Number"
    * item[+]
      * linkId = "2.1"
      * text = "07xxxxxxxx"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#flyover "Fly-over"

// ============================================================
// PAGE 3: Case Information
// ============================================================
* item[+]
  * linkId = "216343227137"
  * text = "Case Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "554231819382"
    * text = "Date 1st seen at health facility"
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
        * valueString = "Date 1st seen at the facility should be after date of birth"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='257830485990').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date 1st seen at the facility should be after date of birth"
      * extension[+]
        * url = "location"
        * valueString = "257830485990"

  * item[+]
    * linkId = "483042281962"
    * text = "Hospitalized? "
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
    * linkId = "340908984116"
    * text = "Date of Admission"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "483042281962"
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
        * valueString = "Date of Admission should be after the date 1st seen at the facility"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='554231819382').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of Admission should be after date 1st seen at the facility"
      * extension[+]
        * url = "location"
        * valueString = "554231819382"

  * item[+]
    * linkId = "755731625544"
    * text = "IP/ OP No"
    * type = #string
    * required = true

  * item[+]
    * linkId = "508745697175"
    * text = "Outcome"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #Alive "Alive"
    * answerOption[+].valueCoding = #Dead "Dead"
    * answerOption[+].valueCoding = #Unknown "Unknown"

// ============================================================
// PAGE 4: Clinical History
// ============================================================
* item[+]
  * linkId = "477144604557"
  * text = "Clinical History"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "728034137219"
    * text = "Date of onset of illness"
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
        * valueString = "Date of Onset of illness should be before the date 1st seen at the facility"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='554231819382').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of Onset of illness should be before the date 1st seen at the facility"
      * extension[+]
        * url = "location"
        * valueString = "554231819382"

  * item[+]
    * linkId = "745196148424"
    * text = "Clinical symptoms"
    * type = #choice
    * required = true
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check-box"
    * answerOption[+].valueCoding = #Fever "Fever"
    * answerOption[+].valueCoding = #Rash "Rash"
    * answerOption[+].valueCoding = #Cough "Cough"
    * answerOption[+].valueCoding = #Coryza "Coryza"
    * answerOption[+].valueCoding = #Conjunctivitis "Conjunctivitis"

  * item[+]
    * linkId = "576528567552"
    * text = "Date of Onset of rash"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "745196148424"
      * operator = #=
      * answerCoding = #Rash "Rash"
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
        * valueString = "Date of Onset of rash should be after the onset of illness"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='728034137219').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of Onset of rash should be after the onset of illness"
      * extension[+]
        * url = "location"
        * valueString = "728034137219"

  * item[+]
    * linkId = "704922081985"
    * text = "Type of Rash"
    * type = #choice
    * required = true
    * enableWhen[+]
      * question = "745196148424"
      * operator = #=
      * answerCoding = #Rash "Rash"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #Maculopapular "Maculopapular"
    * answerOption[+].valueCoding = #Other "Other"

  * item[+]
    * linkId = "679340979918"
    * text = "If Other, specify"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "704922081985"
      * operator = #=
      * answerCoding = #Other "Other"

  * item[+]
    * linkId = "817978705295"
    * text = "Measles Surveilance"
    * type = #display

  * item[+]
    * linkId = "207408507040"
    * text = "Was home of patient visited for contact investigation"
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
    * linkId = "566661890668"
    * text = "If yes, date of visit"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "207408507040"
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
        * valueString = "Date of Home visit should be after the date 1st seen at the facility"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='554231819382').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of Home visit should be after the date 1st seen at the facility"
      * extension[+]
        * url = "location"
        * valueString = "554231819382"

  * item[+]
    * linkId = "865158268604"
    * text = "Is this a Case or a Line List?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #Case "Case"
    * answerOption[+].valueCoding = #"Line List" "Line List"

// ============================================================
// PAGE 5: Vaccination History
// ============================================================
* item[+]
  * linkId = "736291402384"
  * text = "Vaccination History"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "517772812375"
    * text = "Was patient vaccinated against illness?"
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
    * linkId = "886125589225"
    * text = "If yes, number of doses"
    * type = #integer
    * required = true
    * enableWhen[+]
      * question = "517772812375"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $maxValue
      * valueInteger = 8

  * item[+]
    * linkId = "308128177300"
    * text = "MR vaccination given in last 30 days prior to onset of illness"
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
    * linkId = "544290619304"
    * text = "Date of last vaccination"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "308128177300"
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
        * valueString = "Date of last vaccination should be before Date of onset of illness"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='728034137219').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of last vaccination should be before Date of onset of illness"
      * extension[+]
        * url = "location"
        * valueString = "728034137219"

// ============================================================
// PAGE 6: Sample/Specimen Collection
// ============================================================
* item[+]
  * linkId = "271053545237"
  * text = "Sample/Specimen Collection"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"
  * enableWhen[+]
    * question = "865158268604"
    * operator = #=
    * answerCoding = #Case "Case"

  * item[+]
    * linkId = "412689284625"
    * text = "Please select specimen collected"
    * type = #choice
    * required = true
    * repeats = true
    * answerOption[+].valueCoding = #Blood "Blood"
    * answerOption[+].valueCoding = #Urine "Urine"
    * answerOption[+].valueCoding = #"Respiratory Sample" "Respiratory Sample"

  * item[+]
    * linkId = "8962468583341"
    * text = "Date of specimen collection"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "412689284625"
      * operator = #exists
      * answerBoolean = true
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
        * valueString = "Date of Specimen Collection should be after the date 1st seen at the facility"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='554231819382').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of Specimen Collection should be after the date 1st seen at the facility"
      * extension[+]
        * url = "location"
        * valueString = "554231819382"

  * item[+]
    * linkId = "258912872921"
    * text = "Were other specimen types collected?"
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
    * linkId = "340507649387"
    * text = "If yes, specify other specimen type"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "258912872921"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "699353598445"
    * text = "Date of other specimen type collection"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "258912872921"
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
        * valueString = "Date of Specimen Collection should be after the date 1st seen at the facility"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='554231819382').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Date of Specimen Collection should be after the date 1st seen at the facility"
      * extension[+]
        * url = "location"
        * valueString = "554231819382"

  * item[+]
    * linkId = "718251724172"
    * text = "Date specimen sent to lab"
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
        * valueString = "The date should be after the specimen collection date"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='8962468583341').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "The date should be after the specimen collection date"
      * extension[+]
        * url = "location"
        * valueString = "8962468583341"
