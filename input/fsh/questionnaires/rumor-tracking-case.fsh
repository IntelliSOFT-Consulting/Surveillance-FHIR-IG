Alias: $launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $variable = http://hl7.org/fhir/StructureDefinition/variable
Alias: $entryMode = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-entryMode
Alias: $hidden = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $choiceOrientation = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $maxValue = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $validationText = http://ehelse.no/fhir/StructureDefinition/validationtext
Alias: $regex = http://hl7.org/fhir/StructureDefinition/regex
Alias: $constraint = http://hl7.org/fhir/StructureDefinition/questionnaire-constraint
Alias: $cqfCalc = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $answerExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression
Alias: $choiceColumn = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control
Alias: $launchContextCS = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance: RumorTrackingCase
InstanceOf: Questionnaire
Usage: #definition
Title: "Rumor Tracking Tool"
Description: "Rumor and community insight tracking questionnaire for disease surveillance"

* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* title = "Rumor Tracking Tool"
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
// PAGE 1: Administrative Details
// ============================================================
* item[+]
  * linkId = "151479012557"
  * text = "Administrative Details"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

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
    * linkId = "871818396498"
    * text = "Village/Community Health unit"
    * type = #string
    * required = true

// ============================================================
// PAGE 2: Reporter Information
// ============================================================
* item[+]
  * linkId = "145437239629"
  * text = "Reporter Information"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "683805917262"
    * text = "Reporting Cadre"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #communitypromoter "Community Health Promoter"
    * answerOption[+].valueCoding = #communityleader "Community Leader"
    * answerOption[+].valueCoding = #religiousleader "Religious Leader"
    * answerOption[+].valueCoding = #animal-ds-reporter "Community Animal Disease Reporter"
    * answerOption[+].valueCoding = #traditionalhealer "Traditional Healer"
    * answerOption[+].valueCoding = #JournalistNewsReporter "Journalist/News Reporter"
    * answerOption[+].valueCoding = #hcw "Health Care Worker"
    * answerOption[+].valueCoding = #dss-surv-officer "Disease Surveillance Officer"
    * answerOption[+].valueCoding = #hpo "Health Promotion Officer"
    * answerOption[+].valueCoding = #c-hlth-fperson "Community Health Strategy Focal Person"
    * answerOption[+].valueCoding = #c-hlth-assistant "Community Health Assistant"
    * answerOption[+].valueCoding = #otherReportingCdre "Others (Specify)"

  * item[+]
    * linkId = "223529605110"
    * text = "Other Cadre(Specify)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "683805917262"
      * operator = #=
      * answerCoding = #otherReportingCdre "Others (Specify)"

  * item[+]
    * linkId = "683805917111"
    * text = "Agency"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #GOK "GOK"
    * answerOption[+].valueCoding = #"Kenya Red Cross" "Kenya Red Cross"
    * answerOption[+].valueCoding = #"Other(specify)" "Other(specify)"

  * item[+]
    * linkId = "22311605110"
    * text = "Specify Agency"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "683805917111"
      * operator = #=
      * answerCoding = #"Other(specify)" "Other(specify)"

// ============================================================
// PAGE 3: Community Insights
// ============================================================
* item[+]
  * linkId = "104925460221"
  * text = "Community Insights"
  * type = #group
  * extension[+]
    * url = $itemControl
    * valueCodeableConcept = $itemControlCS#page "Page"

  * item[+]
    * linkId = "765331413106"
    * text = "Report of Harmful Practice Likely to Affect Health"
    * type = #string
    * required = true

  * item[+]
    * linkId = "560083852118"
    * text = "Report of Negative Comments, Rumors, Misinformation, Disinformation on Health Interventions shared in the community"
    * type = #text
    * required = true

  * item[+]
    * linkId = "217867281789"
    * text = "Source of Message"
    * type = #choice
    * repeats = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#check-box "Check Box"
    * answerOption[+].valueCoding = #Community "Community"
    * answerOption[+].valueCoding = #"Community Influence" "Community Influence e.g. Chief, Teacher, Religious leader"
    * answerOption[+].valueCoding = #"Social Media" "Social Media"
    * answerOption[+].valueCoding = #"Mass Media" "Mass Media"
    * answerOption[+].valueCoding = #"Print Media (Specify)" "Print Media (Specify)"
    * answerOption[+].valueCoding = #Person-to-Person "Person-to-Person"
    * answerOption[+].valueCoding = #"Other (Specify)" "Other (Specify)"

  * item[+]
    * linkId = "701956366417"
    * text = "Social Media"
    * type = #choice
    * enableWhen[+]
      * question = "217867281789"
      * operator = #=
      * answerCoding = #"Social Media" "Social Media"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #facebook "Facebook"
    * answerOption[+].valueCoding = #whatsapp "WhatsApp"
    * answerOption[+].valueCoding = #twitter "X(Twitter)"
    * answerOption[+].valueCoding = #tiktok "TikTok"
    * answerOption[+].valueCoding = #others "Other(Specify)"

  * item[+]
    * linkId = "979067790514"
    * text = "Other Social Media (Specify)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "701956366417"
      * operator = #=
      * answerCoding = #others "Other(Specify)"

  * item[+]
    * linkId = "626104365539"
    * text = "Mass Media"
    * type = #choice
    * enableWhen[+]
      * question = "217867281789"
      * operator = #=
      * answerCoding = #"Mass Media" "Mass Media"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #radio-station "Radio Station"
    * answerOption[+].valueCoding = #tv-station "TV Station"
    * answerOption[+].valueCoding = #otherspecify "Other (Specify)"

  * item[+]
    * linkId = "803387665675"
    * text = "Radio Station (Specify Name)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "626104365539"
      * operator = #=
      * answerCoding = #radio-station "Radio Station"

  * item[+]
    * linkId = "334025067430"
    * text = "TV Station (Specify Name)"
    * type = #string
    * enableWhen[+]
      * question = "626104365539"
      * operator = #=
      * answerCoding = #tv-station "TV Station"

  * item[+]
    * linkId = "704187583781"
    * text = "Other Mass Media (Specify)"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "626104365539"
      * operator = #=
      * answerCoding = #otherspecify "Other (Specify)"

  * item[+]
    * linkId = "330042491643"
    * text = "What did you do with the message?"
    * type = #choice
    * required = true
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#drop-down "Drop down"
    * answerOption[+].valueCoding = #frwd-authorities "Forwarded to authorities (National, County, Sub County)"
    * answerOption[+].valueCoding = #frwd-rlves "Forwarded to Friends and Relatives"
    * answerOption[+].valueCoding = #shr-chp "Shared with Community Health Promoter"
    * answerOption[+].valueCoding = #shr-cdr "Shared with Community Disease Reporter"
    * answerOption[+].valueCoding = #shr-hcw "Shared with Health Care Worker"
    * answerOption[+].valueCoding = #shr-cl "Shared with Community Leader"
    * answerOption[+].valueCoding = #did-nothing "Did Nothing"
    * answerOption[+].valueCoding = #otherspecify "Other (Specify)"

  * item[+]
    * linkId = "572081717574"
    * text = "Specify what you did with the message?"
    * type = #string
    * enableWhen[+]
      * question = "330042491643"
      * operator = #=
      * answerCoding = #otherspecify "Other (Specify)"

  * item[+]
    * linkId = "808764633907"
    * text = "Did you trust the source of the message?"
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
    * linkId = "305405975161"
    * text = "if yes, why?"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "808764633907"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "reason-no"
    * text = "if no, why?"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "808764633907"
      * operator = #=
      * answerCoding = #no "No"

  * item[+]
    * linkId = "719281771251"
    * text = "Reason for Trust"
    * type = #string
    * required = true
    * enableWhen[+]
      * question = "808764633907"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "801665079239"
    * text = "Additional Observations/Comments"
    * type = #text
    * required = true

  * item[+]
    * linkId = "735623392446"
    * text = "Was Rumour Investigated?"
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
    * linkId = "investigator-name"
    * text = "Name of Investigator"
    * type = #display
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "investigator-name-first"
    * text = "First Name"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "investigator-name-middle"
    * text = "Middle Name"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "investigator-name-surname"
    * text = "Surname Name"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "investigator-phone"
    * text = "Phone Number of Investigator"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"
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
    * linkId = "investigator-role"
    * text = "Function/Role of Investigator"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "investigation-period"
    * text = "Date of the investigation (from – to)"
    * type = #display
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "date-from"
    * text = "From"
    * type = #date
    * enableWhen[+]
      * question = "735623392446"
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

  * item[+]
    * linkId = "date-to"
    * text = "To"
    * type = #date
    * enableWhen[+]
      * question = "735623392446"
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
      * url = $constraint
      * extension[+]
        * url = "key"
        * valueId = "constraint-1"
      * extension[+]
        * url = "requirements"
        * valueString = "This date should be after start date"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "expression"
        * valueString = "%context.answer.value >= %resource.descendants().where(linkId='date-from').answer.value"
      * extension[+]
        * url = "human"
        * valueString = "This date should be after start date"
      * extension[+]
        * url = "location"
        * valueString = "date-from"

  * item[+]
    * linkId = "activities"
    * text = "Main activities carried out (places visited, persons met, etc.)"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "results"
    * text = "Results of the investigation"
    * type = #choice
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"
    * extension[+]
      * url = $itemControl
      * valueCodeableConcept = $itemControlCS#radio-button "Radio Button"
    * extension[+]
      * url = $choiceOrientation
      * valueCode = #horizontal
    * answerOption[+].valueCoding = #confirmed "Confirmed Case of Disease"
    * answerOption[+].valueCoding = #imported "Imported Case"
    * answerOption[+].valueCoding = #rumour "Rumour"

  * item[+]
    * linkId = "rumour-diagnosis"
    * text = "Diagnosis"
    * type = #string
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"

  * item[+]
    * linkId = "conclusion"
    * text = "Conclusion/recommendations (action taken or directives given)"
    * type = #text
    * enableWhen[+]
      * question = "735623392446"
      * operator = #=
      * answerCoding = #yes "Yes"
