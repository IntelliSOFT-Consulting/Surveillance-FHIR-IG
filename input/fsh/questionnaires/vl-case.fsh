Alias: $launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $variable = http://hl7.org/fhir/StructureDefinition/variable
Alias: $entryMode = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-entryMode
Alias: $hidden = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $choiceOrientation = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $entryFormat = http://hl7.org/fhir/StructureDefinition/entryFormat
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $minValue = http://hl7.org/fhir/StructureDefinition/minValue
Alias: $validationText = http://ehelse.no/fhir/StructureDefinition/validationtext
Alias: $regex = http://hl7.org/fhir/StructureDefinition/regex
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $answerExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression
Alias: $choiceColumn = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control
Alias: $launchContextCS = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance: VlCase
InstanceOf: Questionnaire
Usage: #definition
Title: "VL Case"
Description: "Visceral Leishmaniasis surveillance case questionnaire"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "VL Surveillance"
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
  * url = $variable
  * valueExpression
    * name = "historyCountyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='751649865991').answer.value.reference"

* extension[+]
  * url = $variable
  * valueExpression
    * name = "historySubCountyName"
    * language = #text/fhirpath
    * expression = "%resource.descendants().where(linkId='751649866545').answer.value.reference"

* extension[+]
  * url = $entryMode
  * valueCode = #prior-edit

// ============================================================
// PAGE 1: Presentation Phase
// ============================================================
* item[+]
  * linkId = "151479012557"
  * text = "PRESENTATION PHASE"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "546255966914"
    * text = "Hospital/Facility Location"
    * type = #display

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

  // Sub-county level group
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

  // County level group
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

  // National level group
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
    * linkId = "185890957847"
    * text = "Date of Diagnosis"
    * type = #date
    * required = true
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
// PAGE 2: Case Information
// ============================================================
* item[+]
  * linkId = "565301843046"
  * text = "Case Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "123103147447"
    * text = "IP/OP Number"
    * type = #string
    * required = true

  * item[+]
    * linkId = "817903655885"
    * text = "Patient First Name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "164840483828"
    * text = "Patient Middle Name"
    * type = #string

  * item[+]
    * linkId = "606848143908"
    * text = "Patient Family Name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "760016167922"
    * text = "Patient Mobile Contact"
    * type = #string
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
      * linkId = "123456678"
      * text = "07xxxxxxxx"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#flyover "Fly-over"

  * item[+]
    * linkId = "442636360588"
    * text = "Date of Birth known or unknown?"
    * type = #choice
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
      * valueInteger = 999

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
    * linkId = "543806612685"
    * text = "Gender"
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
    * linkId = "743522593349"
    * text = "Pregnancy Status"
    * type = #choice
    * required = true
    * enableWhen[+]
      * question = "543806612685"
      * operator = #=
      * answerCoding = #female "Female"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #notknown "Not Known"
    * answerOption[+].valueCoding = #positive "Positive"
    * answerOption[+].valueCoding = #negative "Negative"

  * item[+]
    * linkId = "832804021140"
    * text = "Weight (Kg)"
    * type = #decimal
    * required = true

  * item[+]
    * linkId = "856786488810"
    * text = "Height (cm)"
    * type = #decimal
    * required = true

  * item[+]
    * linkId = "361227700960"
    * text = "Temperature (°C)"
    * type = #decimal
    * required = true

  * item[+]
    * linkId = "350480749254"
    * text = "Patient Location"
    * type = #display

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
        * expression = "Location?partof={{%patientCountyName}}&_sort=name"
    * extension[+]
      * url = $choiceColumn
      * extension[+]
        * url = "path"
        * valueString = "name"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true

  * item[+]
    * linkId = "754362784943"
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
    * linkId = "116279465819"
    * text = "Village"
    * type = #string
    * required = true

  * item[+]
    * linkId = "845666899224"
    * text = "Nearest Health Facility"
    * type = #string
    * required = true

  * item[+]
    * linkId = "999881476256"
    * text = "Occupation"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #occ-001 "None"
    * answerOption[+].valueCoding = #occ-002 "Student"
    * answerOption[+].valueCoding = #occ-003 "Animal Herder"
    * answerOption[+].valueCoding = #occ-004 "Self Employed"
    * answerOption[+].valueCoding = #occ-005 "Homemaker"
    * answerOption[+].valueCoding = #occ-006 "Other (Specify)"

  * item[+]
    * linkId = "673073919688"
    * text = "Other Occupation(Specify)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "999881476256"
      * operator = #=
      * answerCoding = #occ-006 "Other (Specify)"

  * item[+]
    * linkId = "899673957595"
    * text = "Education Level"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #edu-001 "None"
    * answerOption[+].valueCoding = #edu-002 "Primary"
    * answerOption[+].valueCoding = #edu-003 "Secondary"
    * answerOption[+].valueCoding = #edu-004 "Post–Secondary"
    * answerOption[+].valueCoding = #edu-005 "Other (Specify)"

  * item[+]
    * linkId = "261509225024"
    * text = "Other Education ( Specify)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "899673957595"
      * operator = #=
      * answerCoding = #edu-005 "Other (Specify)"

  * item[+]
    * linkId = "657999955440"
    * text = "Name of Contact Person"
    * type = #string
    * required = true

  * item[+]
    * linkId = "354738003178"
    * text = "Mobile Contact (of Contact Person)"
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
      * linkId = "984586235"
      * text = "07xxxxxxxx"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#flyover "Fly-over"

// ============================================================
// PAGE 3: History of the Disease
// ============================================================
* item[+]
  * linkId = "682361027621"
  * text = "History of the disease"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "728034137219"
    * text = "Date of Onset of Symptoms"
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
    * linkId = "920645761660"
    * text = "Days Since Onset of Symptoms"
    * type = #string
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueString = "0"

  * item[+]
    * linkId = "997694179371"
    * text = "Name of Village Where Patient Probably Got Infected"
    * type = #string
    * required = true

  * item[+]
    * linkId = "648643802331"
    * text = "Is It an Imported Case (from outside the country)?"
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
    * linkId = "405254523776"
    * text = "If Yes, Indicate Name of Country"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "648643802331"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "241783748776"
    * text = "Did Patient Travel to Endemic Area in Last 6 Months? (In country)"
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
    * linkId = "240876879827"
    * text = "If yes, indicate the place(s) visited:"
    * type = #display
    * enableWhen[+]
      * question = "241783748776"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "751649865991"
    * text = "County"
    * type = #reference
    * required = true
    * enableWhen[+]
      * question = "241783748776"
      * operator = #=
      * answerCoding = #yes "Yes"
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
    * linkId = "751649866545"
    * text = "Sub-county"
    * type = #reference
    * required = true
    * enableWhen[+]
      * question = "241783748776"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $answerExpression
      * valueExpression
        * language = #application/x-fhir-query
        * expression = "Location?partof={{%historyCountyName}}&_sort=name"
    * extension[+]
      * url = $choiceColumn
      * extension[+]
        * url = "path"
        * valueString = "name"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true

  * item[+]
    * linkId = "683913433621"
    * text = "Ward"
    * type = #reference
    * enableWhen[+]
      * question = "241783748776"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $answerExpression
      * valueExpression
        * language = #application/x-fhir-query
        * expression = "Location?partof={{%historySubCountyName}}&_sort=name"
    * extension[+]
      * url = $choiceColumn
      * extension[+]
        * url = "path"
        * valueString = "name"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true

  * item[+]
    * linkId = "304570397907"
    * text = "Village"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "241783748776"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "201707720724"
    * text = "Location"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "241783748776"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "742577347417"
    * text = "Did Patient Visit Traditional Healer before visiting Health Facility?"
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
    * linkId = "291919290357"
    * text = "Previous Admission Due to Visceral Leishmaniasis?"
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
    * linkId = "653200828098"
    * text = "If Yes, When Admitted?"
    * type = #choice
    * required = true
    * enableWhen[+]
      * question = "291919290357"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #admin-001 "3 months ago"
    * answerOption[+].valueCoding = #admin-002 "6 months ago"
    * answerOption[+].valueCoding = #admin-003 "1 year ago"
    * answerOption[+].valueCoding = #admin-004 "More than 1 year ago"

// ============================================================
// PAGE 4: Physical Examination
// ============================================================
* item[+]
  * linkId = "119408288668"
  * text = "Physical Examination"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "699010843343"
    * text = "Has Patient Had Fever for Last 2 Weeks?"
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
    * linkId = "clinician-action"
    * text = "Clinician should perform spleen and liver palpation"
    * type = #display
    * enableWhen[+]
      * question = "699010843343"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "458194698702"
    * text = "Abdominal Distension Present?"
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
    * linkId = "788908031336"
    * text = "Organ Enlargement"
    * type = #display

  * item[+]
    * linkId = "594158306957"
    * text = "Liver Enlarged?"
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
    * linkId = "754134389540"
    * text = "Liver Measurement below Costal Margin (cm)"
    * type = #decimal
    * required = true
    * enableWhen[+]
      * question = "594158306957"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $minValue
      * valueDecimal = 0.0
    * extension[+]
      * url = $maxValue
      * valueDecimal = 20.0

  * item[+]
    * linkId = "433410405758"
    * text = "Spleen Enlarged?"
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
    * linkId = "808046746150"
    * text = "Spleen Measurement below Costal Margin (cm)"
    * type = #decimal
    * required = true
    * enableWhen[+]
      * question = "433410405758"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $minValue
      * valueDecimal = 0.0
    * extension[+]
      * url = $maxValue
      * valueDecimal = 20.0

  * item[+]
    * linkId = "496596553090"
    * text = "Presence of Concomitant Infections at presentation?"
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
    * linkId = "968034282530"
    * text = "Name(s) of Concomitant Infections"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "496596553090"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "332723314026"
    * text = "Clinician's Name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "493012943787"
    * text = "Clinician's Signature"
    * type = #string
    * required = true
