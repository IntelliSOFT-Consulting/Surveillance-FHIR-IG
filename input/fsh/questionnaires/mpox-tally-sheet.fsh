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

Instance: MpoxTallySheet
InstanceOf: Questionnaire
Usage: #definition
Title: "Mpox Tally Sheet"
Description: "Mpox Tally Sheet questionnaire for disease surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "Mpox Tally Sheet"
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

  // Display header
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

  // Village
  * item[+]
    * linkId = "village"
    * text = "Village"
    * type = #string
    * required = true

  // Team No
  * item[+]
    * linkId = "team_no"
    * text = "Team No"
    * type = #string
    * required = true

  // Team type
  * item[+]
    * linkId = "team_type"
    * text = "Team type"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #static "Static"
    * answerOption[+].valueCoding = #temporary_fixed "Temporary  Fixed"
    * answerOption[+].valueCoding = #mobile_sites "Mobile sites"

  // Campaign Day
  * item[+]
    * linkId = "campaign_day"
    * text = "Campaign Day"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #1 "Day 1"
    * answerOption[+].valueCoding = #2 "Day 2"
    * answerOption[+].valueCoding = #3 "Day 3"
    * answerOption[+].valueCoding = #4 "Day 4"
    * answerOption[+].valueCoding = #5 "Day 5"
    * answerOption[+].valueCoding = #6 "Day 6"
    * answerOption[+].valueCoding = #7 "Day 7"
    * answerOption[+].valueCoding = #8 "Day 8"
    * answerOption[+].valueCoding = #9 "Day 9"
    * answerOption[+].valueCoding = #10 "Day 10"

  // Date
  * item[+]
    * linkId = "728034137219"
    * text = "Date"
    * type = #date
    * required = true
    * extension[+]
      * url = $validationText
      * valueString = "Cannot be a date in the future"
    * extension[+]
      * url = $entryFormat
      * valueString = "dd-mm-yyyy"
    * extension[+]
      * url = $maxValue
      * valueDate.extension[+]
        * url = $cqfCalc
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

  // Supervisor Name
  * item[+]
    * linkId = "supervisor_name"
    * text = "Supervisor Name"
    * type = #string
    * required = true

  // Supervisor Level
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

// ============================================================
// PAGE 2: Number Reached
// ============================================================
* item[+]
  * linkId = "target_population"
  * text = "Number Reached"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  // --- Healthcare Workers 18-39 ---
  * item[+]
    * linkId = "hcw_18_39_reported"
    * text = "Were any healthcare workers aged 18\u201339 years reported?"
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
    * linkId = "hcw_18_39_male"
    * text = "Number of male healthcare workers aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "hcw_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "hcw_18_39_female"
    * text = "Number of female healthcare workers aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "hcw_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "hcw_18_39_male_no"
    * text = "Number of male healthcare workers aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "hcw_18_39_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "hcw_18_39_female_no"
    * text = "Number of female healthcare workers aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "hcw_18_39_reported"
      * operator = #=
      * answerCoding = #no

  // --- Healthcare Workers 40-59 ---
  * item[+]
    * linkId = "hcw_40_59_reported"
    * text = "Were any healthcare workers aged 40\u201359 years reported?"
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
    * linkId = "hcw_40_59_male"
    * text = "Number of male healthcare workers aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "hcw_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "hcw_40_59_female"
    * text = "Number of female healthcare workers aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "hcw_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "hcw_40_59_male_no"
    * text = "Number of male healthcare workers aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "hcw_40_59_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "hcw_40_59_female_no"
    * text = "Number of female healthcare workers aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "hcw_40_59_reported"
      * operator = #=
      * answerCoding = #no

  // --- Healthcare Workers 60+ ---
  * item[+]
    * linkId = "hcw_60_plus_reported"
    * text = "Were any healthcare workers aged 60+ years reported?"
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
    * linkId = "hcw_60_plus_male"
    * text = "Number of male healthcare workers aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "hcw_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "hcw_60_plus_female"
    * text = "Number of female healthcare workers aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "hcw_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "hcw_60_plus_male_no"
    * text = "Number of male healthcare workers aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "hcw_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "hcw_60_plus_female_no"
    * text = "Number of female healthcare workers aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "hcw_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  // --- Sex Workers Under 18 ---
  * item[+]
    * linkId = "sw_under_18_reported"
    * text = "Were any sex workers aged under 18 years reported?"
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
    * linkId = "sw_under_18_male"
    * text = "Number of male sex workers under 18 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_under_18_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_under_18_female"
    * text = "Number of female sex workers aged under 18 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_under_18_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_under_18_male_no"
    * text = "Number of male sex workers aged under 18 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_under_18_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "sw_under_18_female_no"
    * text = "Number of female sex workers aged under 18 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_under_18_reported"
      * operator = #=
      * answerCoding = #no

  // --- Sex Workers 18-39 ---
  * item[+]
    * linkId = "sw_18_39_reported"
    * text = "Were any sex workers aged 18\u201339 years reported?"
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
    * linkId = "sw_18_39_male"
    * text = "Number of male sex workers aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_18_39_female"
    * text = "Number of female sex workers aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_18_39_male_no"
    * text = "Number of male sex workers aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_18_39_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "sw_18_39_female_no"
    * text = "Number of female sex workers aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_18_39_reported"
      * operator = #=
      * answerCoding = #no

  // --- Sex Workers 40-59 ---
  * item[+]
    * linkId = "sw_40_59_reported"
    * text = "Were any sex workers aged 40\u201359 years reported?"
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
    * linkId = "sw_40_59_male"
    * text = "Number of male sex workers aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_40_59_female"
    * text = "Number of female sex workers aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_40_59_male_no"
    * text = "Number of male sex workers aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_40_59_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "sw_40_59_female_no"
    * text = "Number of female sex workers aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_40_59_reported"
      * operator = #=
      * answerCoding = #no

  // --- Sex Workers 60+ ---
  * item[+]
    * linkId = "sw_60_plus_reported"
    * text = "Were any sex workers aged 60+ years reported?"
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
    * linkId = "sw_60_plus_male"
    * text = "Number of male sex workers aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_60_plus_female"
    * text = "Number of female sex workers aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "sw_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "sw_60_plus_male_no"
    * text = "Number of male sex workers aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "sw_60_plus_female_no"
    * text = "Number of female sex workers aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "sw_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  // --- Truck Drivers 18-39 ---
  * item[+]
    * linkId = "td_18_39_reported"
    * text = "Were any truck drivers aged 18\u201339 years reported?"
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
    * linkId = "td_18_39_male"
    * text = "Number of male truck drivers aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "td_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "td_18_39_female"
    * text = "Number of female truck drivers aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "td_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "td_18_39_male_no"
    * text = "Number of male truck drivers aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "td_18_39_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "td_18_39_female_no"
    * text = "Number of female truck drivers aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "td_18_39_reported"
      * operator = #=
      * answerCoding = #no

  // --- Truck Drivers 40-59 ---
  * item[+]
    * linkId = "td_40_59_reported"
    * text = "Were any truck drivers aged 40\u201359 years reported?"
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
    * linkId = "td_40_59_male"
    * text = "Number of male truck drivers aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "td_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "td_40_59_female"
    * text = "Number of female truck drivers aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "td_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "td_40_59_male_no"
    * text = "Number of male truck drivers aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "td_40_59_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "td_40_59_female_no"
    * text = "Number of female truck drivers aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "td_40_59_reported"
      * operator = #=
      * answerCoding = #no

  // --- Truck Drivers 60+ ---
  * item[+]
    * linkId = "td_60_plus_reported"
    * text = "Were any truck drivers aged 60+ years reported?"
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
    * linkId = "td_60_plus_male"
    * text = "Number of male truck drivers aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "td_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "td_60_plus_female"
    * text = "Number of female truck drivers aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "td_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "td_60_plus_male_no"
    * text = "Number of male truck drivers aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "td_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "td_60_plus_female_no"
    * text = "Number of female truck drivers aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "td_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  // --- Others 18-39 ---
  * item[+]
    * linkId = "others_18_39_reported"
    * text = "Were any others aged 18\u201339 years reported?"
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
    * linkId = "others_18_39_male"
    * text = "Number of male others aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "others_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "others_18_39_female"
    * text = "Number of female others aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "others_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "others_18_39_male_no"
    * text = "Number of male others aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "others_18_39_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "others_18_39_female_no"
    * text = "Number of female others aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "others_18_39_reported"
      * operator = #=
      * answerCoding = #no

  // --- Others 40-59 ---
  * item[+]
    * linkId = "others_40_59_reported"
    * text = "Were any others aged 40\u201359 years reported?"
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
    * linkId = "others_40_59_male"
    * text = "Number of male others aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "others_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "others_40_59_female"
    * text = "Number of female others aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "others_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "others_40_59_male_no"
    * text = "Number of male others aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "others_40_59_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "others_40_59_female_no"
    * text = "Number of female others aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "others_40_59_reported"
      * operator = #=
      * answerCoding = #no

  // --- Others 60+ ---
  * item[+]
    * linkId = "others_60_plus_reported"
    * text = "Were any others aged 60+ years reported?"
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
    * linkId = "others_60_plus_male"
    * text = "Number of male others aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "others_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "others_60_plus_female"
    * text = "Number of female others aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "others_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "others_60_plus_male_no"
    * text = "Number of male others aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "others_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "others_60_plus_female_no"
    * text = "Number of female others aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "others_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  // --- Contacts Under 18 ---
  * item[+]
    * linkId = "contact_under_18_reported"
    * text = "Were any contacts aged under 18 years reported?"
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
    * linkId = "contact_under_18_male"
    * text = "Number of male contacts aged under 18 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_under_18_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_under_18_female"
    * text = "Number of female contacts aged under 18 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_under_18_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_under_18_male_no"
    * text = "Number of male contacts aged under 18 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_under_18_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "contact_under_18_female_no"
    * text = "Number of female contacts aged under 18 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_under_18_reported"
      * operator = #=
      * answerCoding = #no

  // --- Contacts 18-39 ---
  * item[+]
    * linkId = "contact_18_39_reported"
    * text = "Were any contacts aged 18\u201339 years reported?"
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
    * linkId = "contact_18_39_male"
    * text = "Number of male contacts aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_18_39_female"
    * text = "Number of female contacts aged 18\u201339 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_18_39_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_18_39_male_no"
    * text = "Number of male contacts aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_18_39_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "contact_18_39_female_no"
    * text = "Number of female contacts aged 18\u201339 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_18_39_reported"
      * operator = #=
      * answerCoding = #no

  // --- Contacts 40-59 ---
  * item[+]
    * linkId = "contact_40_59_reported"
    * text = "Were any contacts aged 40\u201359 years reported?"
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
    * linkId = "contact_40_59_male"
    * text = "Number of male contacts aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_40_59_female"
    * text = "Number of female contacts aged 40\u201359 years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_40_59_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_40_59_male_no"
    * text = "Number of male contacts aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_40_59_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "contact_40_59_female_no"
    * text = "Number of female contacts aged 40\u201359 years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_40_59_reported"
      * operator = #=
      * answerCoding = #no

  // --- Contacts 60+ ---
  * item[+]
    * linkId = "contact_60_plus_reported"
    * text = "Were any contacts aged 60+ years reported?"
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
    * linkId = "contact_60_plus_male"
    * text = "Number of male contacts aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_60_plus_female"
    * text = "Number of female contacts aged 60+ years reported"
    * type = #integer
    * enableWhen[+]
      * question = "contact_60_plus_reported"
      * operator = #=
      * answerCoding = #yes

  * item[+]
    * linkId = "contact_60_plus_male_no"
    * text = "Number of male contacts aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_60_plus_reported"
      * operator = #=
      * answerCoding = #no

  * item[+]
    * linkId = "contact_60_plus_female_no"
    * text = "Number of female contacts aged 60+ years reported"
    * type = #integer
    * extension[+]
      * url = $hidden
      * valueBoolean = true
    * initial[+].valueInteger = 0
    * enableWhen[+]
      * question = "contact_60_plus_reported"
      * operator = #=
      * answerCoding = #no

// ============================================================
// PAGE 3: Vaccine Utilization, AEFI and Mpox Surveillance
// ============================================================
* item[+]
  * linkId = "utilization_aefi_mpox_surveilance"
  * text = "Vaccine Utilization, AEFI and Mpox Surveillance"
  * type = #group

  // Vaccine Utilization
  * item[+]
    * linkId = "vaccine_received"
    * text = "Number of doses of vaccine received"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 9999

  * item[+]
    * linkId = "vaccine_used"
    * text = "Number of vaccine doses used"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 9999
    * extension[+]
      * url = $constraint
      * extension[+]
        * url = "key"
        * valueId = "constraint-1"
      * extension[+]
        * url = "requirements"
        * valueString = "vaccine_used <= vaccine_received"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='vaccine_received').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Doses used cannot be more than the doses received"
      * extension[+]
        * url = "location"
        * valueString = "1"

  * item[+]
    * linkId = "vaccine_remaining"
    * text = "Number of vaccine doses remaining"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 9999
    * extension[+]
      * url = $constraint
      * extension[+]
        * url = "key"
        * valueId = "constraint-1"
      * extension[+]
        * url = "requirements"
        * valueString = "vaccine_used <= vaccine_received"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='vaccine_received').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "Doses used cannot be more than the doses received"
      * extension[+]
        * url = "location"
        * valueString = "1"

  // AEFI
  * item[+]
    * linkId = "aefi"
    * text = "AEFI"
    * type = #display

  * item[+]
    * linkId = "aefi_yes_no"
    * text = "Reported AEFI?"
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
    * linkId = "aefi_count"
    * text = "Number of vaccinee with reported AEFI"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 9999
    * extension[+]
      * url = $constraint
      * extension[+]
        * url = "key"
        * valueId = "constraint-1"
      * extension[+]
        * url = "requirements"
        * valueString = "aefi_count <= vaccine_used"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value <= %resource.descendants().where(linkId='vaccine_used').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "AEFI count cannot be more than the doses used"
      * extension[+]
        * url = "location"
        * valueString = "1"
    * enableWhen[+]
      * question = "aefi_yes_no"
      * operator = #=
      * answerCoding = #yes

  // Surveillance
  * item[+]
    * linkId = "surveilance"
    * text = "Surveilance"
    * type = #display

  * item[+]
    * linkId = "mpox_suspected_case_count"
    * text = "No. of Mpox Suspected Case detected"
    * type = #integer
    * required = true
    * extension[+]
      * url = $maxValue
      * valueInteger = 9999

  // Rumour Tracking
  * item[+]
    * linkId = "rumour_tracking"
    * text = "Rumour Tracking"
    * type = #display

  * item[+]
    * linkId = "rumour_reported"
    * text = "Were any rumours reported"
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
    * linkId = "rumour_details"
    * text = "What was the rumour about"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "rumour_reported"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "rumour_escalated"
    * text = "Were they escalated"
    * type = #choice
    * required = true
    * enableWhen[+]
      * question = "rumour_reported"
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
