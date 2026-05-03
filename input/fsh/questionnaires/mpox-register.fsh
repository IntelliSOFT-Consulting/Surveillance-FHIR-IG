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
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $answerExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression
Alias: $choiceColumn = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control
Alias: $launchContextCS = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext
Alias: $initialExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression

Instance: MpoxRegister
InstanceOf: Questionnaire
Usage: #definition
Title: "Mpox Register"
Description: "Mpox vaccination register questionnaire"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* status = #active

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
    * linkId = "992818778559"
    * text = "EPID No"
    * type = #string
    * readOnly = true

// ============================================================
// PAGE 2: Client Information
// ============================================================
* item[+]
  * linkId = "client_information"
  * text = "Client Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "873240407472"
    * text = "First Name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "246751846436"
    * text = "Middle Name"
    * type = #string

  * item[+]
    * linkId = "486402457213"
    * text = "Last Name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "dob_known"
    * text = "Is Date of Birth known?"
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
    * linkId = "257830485990"
    * text = "Date of Birth"
    * type = #date
    * required = true
    * enableWhen[+]
      * question = "dob_known"
      * operator = #=
      * answerCoding = #yes "Yes"
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
      * url = $entryFormat
      * valueString = "dd-mm-yyyy"

  * item[+]
    * linkId = "calculated_age"
    * text = "Age"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "dob_known"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $hidden
      * valueBoolean = true

  * item[+]
    * linkId = "age-group"
    * text = "Age Details"
    * type = #group
    * enableWhen[+]
      * question = "dob_known"
      * operator = #=
      * answerCoding = #no "No"

    * item[+]
      * linkId = "492731638700"
      * text = "Age in Years"
      * type = #integer
      * required = true
      * extension[+]
        * url = $maxValue
        * valueInteger = 999

    * item[+]
      * linkId = "185726989867"
      * text = "Age in Months"
      * type = #integer
      * extension[+]
        * url = $maxValue
        * valueInteger = 11

    * item[+]
      * linkId = "828303331247"
      * text = "Age in Days"
      * type = #integer
      * extension[+]
        * url = $maxValue
        * valueInteger = 31

  * item[+]
    * linkId = "929966324957"
    * text = "Gender"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"

  * item[+]
    * linkId = "occupation"
    * text = "Occupation"
    * type = #choice
    * required = true
    * answerOption[+].valueCoding = http://example.org/fhir/CodeSystem/occupation-codes#HCW "Health Care Worker"
    * answerOption[+].valueCoding = http://example.org/fhir/CodeSystem/occupation-codes#SW "Sex Worker"
    * answerOption[+].valueCoding = http://example.org/fhir/CodeSystem/occupation-codes#TD "Truck Driver"
    * answerOption[+].valueCoding = http://example.org/fhir/CodeSystem/occupation-codes#OTH "Other"

  * item[+]
    * linkId = "occupation-other"
    * text = "Please specify other occupation"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "occupation"
      * operator = #=
      * answerCoding = http://example.org/fhir/CodeSystem/occupation-codes#OTH "Other"

  * item[+]
    * linkId = "nationality"
    * text = "Nationality"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = urn:iso:std:iso:3166#KE "Kenyan"
    * answerOption[+].valueCoding = urn:iso:std:iso:3166#NON "Non-Kenyan"

  * item[+]
    * linkId = "country_of_origin"
    * text = "If Non-Kenyan, specify country of origin"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "nationality"
      * operator = #=
      * answerCoding = urn:iso:std:iso:3166#NON "Non-Kenyan"

  * item[+]
    * linkId = "patient-identify-type"
    * text = "Identification Type"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop Down"
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-identifier#nationalId "National ID"
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-identifier#passport "Passport"

  * item[+]
    * linkId = "PR-id-value"
    * text = "Identification Number"
    * type = #string
    * required = true

  * item[+]
    * linkId = "a4-county"
    * text = "County"
    * type = #reference
    * required = true
    * enableWhen[+]
      * question = "nationality"
      * operator = #=
      * answerCoding = urn:iso:std:iso:3166#KE "Kenyan"
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
    * enableWhen[+]
      * question = "nationality"
      * operator = #=
      * answerCoding = urn:iso:std:iso:3166#KE "Kenyan"
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
    * enableWhen[+]
      * question = "nationality"
      * operator = #=
      * answerCoding = urn:iso:std:iso:3166#KE "Kenyan"
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
    * linkId = "PR-address-village"
    * text = "Village"
    * type = #string
    * required = true

  * item[+]
    * linkId = "754217593839"
    * text = "Phone Number"
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
      * linkId = "2.1"
      * text = "07xxxxxxxx"
      * type = #display
      * extension[+]
        * url = $itemControl
        * valueCodeableConcept = $itemControlCS#flyover "Fly-over"

  * item[+]
    * linkId = "location_widget"
    * text = "GPS Coordinate"
    * type = #group

    * item[+]
      * linkId = "latitude"
      * text = "Latitude"
      * type = #decimal

    * item[+]
      * linkId = "longitude"
      * text = "Longitude"
      * type = #decimal

// ============================================================
// PAGE 3: Screening
// ============================================================
* item[+]
  * linkId = "screening"
  * text = "Screening"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "contact_mpox"
    * text = "Contact of Mpox Case"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#yes "Yes"
    * answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#no "No"

  * item[+]
    * linkId = "allergic_history"
    * text = "Allergic History"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#yes "Yes"
    * answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#no "No"

// ============================================================
// PAGE 4: Dose Information
// ============================================================
* item[+]
  * linkId = "dosage"
  * text = "Dose Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "vaccine_name"
    * text = "Vaccine name"
    * type = #choice
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #MVA-BN "MVA-BN"
    * answerOption[+].valueCoding = #LC16 "LC16"
    * answerOption[+].valueCoding = #ACAM2000 "ACAM 2000"

  * item[+]
    * linkId = "date_given"
    * text = "Date Given"
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
    * extension[+]
      * url = $entryFormat
      * valueString = "dd-mm-yyyy"

  * item[+]
    * linkId = "batch_no"
    * text = "Batch Number"
    * type = #string
    * required = true

  * item[+]
    * linkId = "vaccination_center"
    * text = "Name of Vaccination Center"
    * type = #string
    * required = true

  * item[+]
    * linkId = "supervisor_name"
    * text = "Supervisor Name"
    * type = #string
    * required = true

  * item[+]
    * linkId = "supervisor_level"
    * text = "Supervisor Level"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #National "National"
    * answerOption[+].valueCoding = #County "County"
    * answerOption[+].valueCoding = #"Sub County" "Sub County"
    * answerOption[+].valueCoding = #Partner "Partner"
