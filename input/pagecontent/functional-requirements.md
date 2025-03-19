# Functional Requirements

Functional requirements describe the capabilities the system must have in order to meet the end-users’ needs and achieve tasks within the business process.

### Business Process A: Community Event-Based Surveillance

| Requirement ID       | Activity ID and Name            | As a...                        | I want...                                                       | So that...                                                      |
|----------------------|--------------------------------|--------------------------------|----------------------------------------------------------------|-----------------------------------------------------------------|
| IDSR.FXNREQ.001     | IDSR.A1. Identify and report a signal | Community health promoter     | To be able to send notification of an identified signal to a community health assistant. | I will identify an unusual event or signal in the community and report accordingly. |
| IDSR.FXNREQ.002     | IDSR.A2. Triage signal reported | Community health assistant    | To be able to verify a signal and send a notification to the sub-county disease surveillance coordinator. | I will triage and verify a signal and report accordingly.        |
| IDSR.FXNREQ.003     | IDSR.A3 Risk assessment        | Sub-county disease surveillance coordinator | To receive, assess, and escalate high-risk events to county and national levels. | I will coordinate appropriate public health actions.             |

### Business Process B: Health Facility Event-Based Surveillance

| Requirement ID       | Activity ID and Name            | As a...                        | I want...                                                       | So that...                                                      |
|----------------------|--------------------------------|--------------------------------|----------------------------------------------------------------|-----------------------------------------------------------------|
| IDSR.FXNREQ.001     | IDSR.B1. Event detection       | Clinician                      | To record clinical symptoms and suspected cases in a standardized format. | I can report potential outbreaks identified early and correctly. |
| IDSR.FXNREQ.001     | IDSR.B1. Event detection       | Clinician                      | To request and receive laboratory test results within a defined timeframe. | I can diagnostically confirm an event for patient management and public health response. |
| IDSR.FXNREQ.002     | IDSR.B2. Event verification    | Health facility focal person   | To verify suspected cases before escalating them to the SCDSC. | I will include only verified cases in surveillance reports.      |
| IDSR.FXNREQ.003     | IDSR.B3. Data aggregation      | Sub-county disease surveillance coordinator | To aggregate and analyze facility-level surveillance data. | I will include only verified cases in surveillance reports to monitor disease trends and implement appropriate interventions. |

### Business Process C: Laboratory Surveillance

| Requirement ID       | Activity ID and Name            | As a...                        | I want...                                                       | So that...                                                      |
|----------------------|--------------------------------|--------------------------------|----------------------------------------------------------------|-----------------------------------------------------------------|
| IDSR.FXNREQ.001     | IDSR.C1. Specimen collection   | Laboratory technologist        | To collect and label patient specimens properly. | I will collect, label patient’s specimen and record patient’s demographics and test requested. |
| IDSR.FXNREQ.002     | IDSR.C1. Specimen processing and analysis | Laboratory technologist | To process and analyze specimens efficiently. | I will process and analyze laboratory tests. |
| IDSR.FXNREQ.003     | IDSR.C1. Laboratory test results reporting | Laboratory technologist | To report laboratory test results directly to the surveillance system. | I will report and record laboratory test results. |
| IDSR.FXNREQ.004     | IDSR.C1. Laboratory confirmed-cases monitoring | Sub-county disease surveillance coordinator | To monitor laboratory-confirmed cases from different facilities. | I will monitor laboratory-confirmed cases and report accordingly. |
| IDSR.FXNREQ.005     | IDSR.C1. Laboratory tests referral | National public laboratory technologist | To receive and analyze referred specimens for specialized testing. | I will receive any referral laboratory test, process, and submit results accordingly. |

### Business Process D: Report Generation

| Requirement ID       | Activity ID and Name            | As a...                        | I want...                                                       | So that...                                                      |
|----------------------|--------------------------------|--------------------------------|----------------------------------------------------------------|-----------------------------------------------------------------|
| IDSR.FXNREQ.001     | IDSR.D1. Summary Reports submission | Health facility focal person | To submit weekly and monthly reports to the IDSR system. | I will include only verified cases in surveillance reports to ensure accurate disease surveillance data at the national level. |
| IDSR.FXNREQ.002     | IDSR.D2. Summary reports validation and consolidation | Sub-county disease surveillance coordinator | To validate and consolidate reports from multiple health facilities. | I will include only verified cases in surveillance reports to ensure data quality and completeness before submission to KHIS. |
| IDSR.FXNREQ.003     | IDSR.D3. Report analysis | National surveillance officer | To analyze IDSR data for trends and outbreak detection. | I will include only verified cases in surveillance reports to ensure informed public health decisions and interventions. |
