# Business Processes & Workflows

A business process, or process, is a set of related activities or tasks performed together to achieve the objectives of the health Programme area, such as registration, counseling, and referrals. 

Workflows are a visual representation of the progression of activities (tasks, events, and interactions) that are performed within the business process. The workflow provides a story for the business process being diagrammed and is used to enhance communication and collaboration among users, stakeholders, and engineers.


### Overview of key surveillance business processes

<table class="table table-bordered table-hover table-striped">
    <thead>
        <tr>
            <th></th>
            <th>#</th>
            <th>Process Name</th>
            <th>Process ID</th>
            <th>Personas</th>
            <th>Objectives</th>
            <th>Task set</th>
        </tr>
    </thead>
    <tbody>
    <tr>
            <td></td>
            <td></td>
            <td>Title</td>
            <td>ID used to
            reference this
            process
            throughout the
            DAK
            </td>
            <td>Individuals
            interacting to
            complete the
            process
            </td>
            <td>A concrete
            statement
            describing what
            the process
            seeks to achieve
            </td>
            <td>The general set of activities performed within the process</td>
    </tr>
    <tr>
            <td></td>
            <td>1</td>
            <td>Community event-based surveillance reporting</td>
            <td></td>
            <td>
                <ul>
                    <li>Community Health Promoters</li>
                    <li>Community Health Assistant</li>
                    <li>Clinician</li>
                </ul>
            </td>
            <td>To detect and report unusual health events at the community level.</td>
            <td>
            <p> <strong> Starting point: </strong> Community Health Promoter (CHP) identifies an unusual health event and reports the suspected event to the community health assistant. </p>
            <ul>
                <li>Triages and verifies the signal</li>
                <li>Sends verification report of actual event to sub-county disease surveillance coordinator.</li>
            </ul>
            </td>
    </tr>
    <tr>
            <td></td>
            <td>2</td>
            <td>Health facility event-based surveillance reporting</td>
            <td></td>
            <td>
                <ul>
                    <li>Clinician</li>
                    <li>Laboratory Technologist</li>
                    <li>The health facility focal person</li>
                </ul>
            </td>
            <td>To record suspected cases of diseases/conditions identified in health facilities or referred from communities and submit to the sub-county.</td>
            <td>
            <p> <strong> Starting point: </strong>Patient visits the health facility. </p>
            <ul>
                <li>The health worker identifies suspected cases based on clinical symptoms and examination.</li>
                <li>Request lab test for further investigation</li>
                <li>Notify the health facility surveillance focal person of the suspected disease.</li>
                <li>Reporting of the disease to sub-county disease surveillance coordinator</li>
                <li>Submit weekly epidemic data to the sub-county disease surveillance coordinator.</li>
            </ul>
            </td>
    </tr>
    <tr>
            <td></td>
            <td>3</td>
            <td>Indicator reporting</td>
            <td></td>
            <td>
                <ul>
                    <li>Health Facility HRIO</li>
                    <li>Sub-county disease surveillance coordinator</li>
                    <li>Sub-county/county HRIOs</li>
                </ul>
            </td>
            <td>To compile aggregate summaries from health facilities and enter/upload  data to KHIS</td>
            <td>
            <p> <strong> Starting point: </strong>Health facilities generate summary reports at the site level.</p>
            <ul>
                <li>Submit the summaries to the sub-county.</li>
                <li>Aggregate summaries from health facilities.</li>
                <li>Analyzes data to identify trends and patterns in events/diseases by location.</li>
                <li>Enter data to KHIS</li>
            </ul>
            </td>
    </tr>
    <tr>
            <td></td>
            <td>4</td>
            <td>Laboratory Surveillance</td>
            <td></td>
            <td>
                <ul>
                    <li>Laboratory Teechnologist</li>
                </ul>
            </td>
            <td>To ensure proper specimen collection, transportation, testing, reporting, and timely diagnosis of diseases.</td>
            <td>
            <p> <strong> Starting point: </strong>A health worker orders a lab test for a suspected case. </p>
            <ul>
                <li>Specimen collected and labelled according to standards.</li>
                <li>Specimen transported to the designated health facility or national lab  </li>
                <li>The lab processes the sample and generates results.</li>
                <li>Results were shared with the requesting facility and SCDSC.</li>
                <li>If necessary, samples are sent for confirmatory testing at the national lab.</li>
                <li>Confirmed lab results are entered into KHIS for national reporting.</li>
            </ul>
            </td>
    </tr>
    <tr>
            <td></td>
            <td>5</td>
            <td>Report Generation and Analysis</td>
            <td></td>
            <td>
                <ul>
                    <li>County Disease Surveillance Coordinator</li>
                    <li>National Disease Surveillance Coordinator</li>
                </ul>
            </td>
            <td>To visualize reports submitted from facilities and view disease occurrences, patterns, and trend analysis.</td>
            <td>
            <p> <strong> Starting point: </strong>Data is submitted to KHIS at the county and national levels.</p>
            <ul>
                <li>Analyzes data and identifies trends and patterns in diseases.</li>
                <li>Generate weekly epidemiological bulletin for prompt decision-making.</li>
            </ul>
            </td>
    </tr>
    </tbody>
</table>

### Business process symbols used in workflows
<table class="table table-hover table-striped table-bordered">
    <thead>
        <tr>
            <th>Symbol</th>
            <th>Symbol Name</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
    <tr>
            <td><img title="Swim Lane" alt="Swim Lane" src="swim_lane.png"/></td>
            <td><strong>Swim Lane</strong></td>
            <td>Each individual or type of user is assigned to a swim lane, a designated area for noting the activities performed or expected of that specific actor. For example, a family planning health worker may have one swim lane; the supervisor would be in another swim lane; the clients/patients would be classified in another swim lane. If the activities can be performed by either actor, then those activities can be depicted overlapping the two relevant swim lanes.
            </td>
    </tr>
    <tr>
            <td><img title="Start event or Trigger Event" alt="Start event or Trigger Event" src="start_event.png"/></td>
            <td><strong>Start event or Trigger Event</strong></td>
            <td>The workflow diagram should contain both a start and an end event, defining the beginning and completion of the task, respectively.</td>
    </tr>
    <tr>
            <td><img title="End Event" alt="End Event" src="end_event.png"/></td>
            <td><strong>End Event</strong></td>
            <td>There can be multiple end events depicted across multiple swimlanes in a business process diagram. However, for diagram clarity, there should only be one end event per swim lane.</td>
    </tr>
    <tr>
            <td><img title="Activity, Process, Step or Task" alt="Activity, Process, Step or Task" src="activity_task_process.png"/></td>
            <td><strong>Activity, Process, Step or Task</strong></td>
            <td>Each activity should start with a verb, e.g. for example, “Register client”, or “Calculate risk”. Between the start and end of a task, there should be a series of activities noted - in the successive actions performed by the actor for that swim lane. There can also be sub-processes within each activity (see next row).</td>
    </tr>
    <tr>
            <td><img title="Activity with sub-process" alt="Activity with sub-process" src="activity_with_subprocess.png"/></td>
            <td><strong>Activity with sub-process</strong></td>
            <td>This symbol denotes an activity that has a much longer sub-process, to be detailed in another diagram. If the diagram starts to become too complex and unhelpful, the sub-process symbol should be used to reference this sub-another process depicted on another diagram page. (Activity with sub-process in grey box is not covered in this DAK).
            </td>
    </tr>
    <tr>
            <td><img title="Sequence flow" alt="Sequence flow" src="sequence_flow.png"/></td>
            <td><strong>Sequence flow</strong></td>
            <td>This symbol denotes the flow direction from one process to the next. The end event should not have any output arrows. All symbols (except Start event) may have an unlimited number of input arrows. All symbols (except End event and the Gateway) should have one and only one output arrow, leading to a new symbol, looping back to a previously used symbol, or pointing to the Eend event symbol. Connecting arrows should not intersect (cross) each other. 
            </td>
    </tr>
    <tr>
            <td><img title="Gateway" alt="Gateway" src="gateway.png"/></td>
            <td><strong>Gateway</strong></td>
            <td>This symbol is used to depict a fork, or decision point, in the workflow, which may be a simple binary (for example,e.g. yes/no) filter with two corresponding output arrows, or a different set of outputs. In this document There should typically be only two different outputs that originate from the decision- point. If you find yourself needing more than two “output” or sequence flow direction arrows, this is you most likely trying to depict “decision-support logic” or a “business rule”. This should be depicted as an “Activity with business rule” (above) instead. </td>
    </tr>
    <tr>
            <td><img title="Throw – Link" alt="Throw – Link" src="throw_link.png"/></td>
            <td><strong>Throw – Link</strong></td>
            <td>The “Throw–Link” serves as the start of an off-page connector. It is the end of the process when there is no more room on your page for that workflow. It is the end of a process on your current page or the end of a sub-process that is part of a larger process. When used, there will need to be a corresponding “Catch–Link” on the other page that shows the continuation of the workflow.  that follows the “Throw–Link”. 
            </td>
    </tr>
    <tr>
            <td><img title="Catch – Link" alt="Catch – Link" src="catch_link.png"/></td>
            <td><strong>Catch – Link</strong></td>
            <td>The “Catch–Link” serves as an off-page connector. It is the start of a new process that follows a previous process, a continuation of a process from a previous page,  on a different page from the “Throw – Link” or the start of a sub-process that is part of a larger process. Every “CatchLink” needs to align with at least one corresponding There needs to be a “Throw–Link” that is aligned to the prior process diagram “Catch – Link”. 
            </td>
    </tr>
    <tr>
            <td><img title="Loop activity" alt="Loop activity" src="loop_activity.png"/></td>
            <td><strong>Loop activity</strong></td>
            <td>This “Loop Activity” or loop task symbolizes an activity or task that is repeated until it no longer needs to be repeated. For example, vaccine administration can happen as many times as the number of vaccines that need to be given. 
            </td>
    </tr>
    </tbody>
</table>


### Community event-based surveillance Workflow

<div class="text-center">
<img title="Community event-based surveillance Workflow" alt="Community event-based surveillance Workflow" src="community_event_based_surveillance_workflow.png"/>
</div>

### Health facility event-based surveillance Workflow
<div class="text-center">
<img title="Health facility event-based surveillance Workflow" alt="Health facility event-based surveillance Workflow" src="health_facility_event_based_surveillance_workflow.png"/>
</div>

### Indicator reporting Workflow

### Laboratory Surveillance Workflow
<div class="text-center">
<img title="Laboratory Surveillance Workflow" alt="Laboratory Surveillance Workflow" src="laboratory_surveillance_workflow.png"/>
</div>

### Report Generation and Analysis Workflow
<div class="text-center">
<img title="Report Generation and Analysis Workflow" alt="Report Generation and Analysis Workflow" src="report_generation_and_analysis_workflow.png"/>
</div>