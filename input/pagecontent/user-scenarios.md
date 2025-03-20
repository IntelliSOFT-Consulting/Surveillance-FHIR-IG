# User Scenarios

User scenarios are narratives that describe how the different personas may interact with each other and are intended to give an illustrative idea of a typical workflow.  This section is intended to provide an understanding of how the system would be used, and how it would fit into existing workflows.

### Scenario 1: Case detection

<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Caregiver</i></span>: Fatuma
                    </li>
                    <li>
                        <span><i>Patient</i></span>: Ayan
                    </li>
                    <li>
                        <span><i>CHP</i></span>: Amina
                    </li>
                    <li>
                        <span><i>CHA</i></span>: James
                    </li>
                    <li>
                        <span><i>SCDSC</i></span>: Dr. Wanjiru
                    </li>
                    <li>
                        <span><i>Sub County Health officer</i></span>: Sarah
                    </li>
                    <li>
                        <span><i>Sub-county medical laboratory coordinator</i></span>: Ali
                    </li>
                    <li>
                        <span><i>County disease surveillance coordinator</i></span>: Dr. Otieno
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            Fatuma, a mother in a rural village, notices that her three-year-old son, Ayaan, has developed a high fever, rash, and watery eyes. Initially, she tried home remedies, but after two days, his condition worsened. Concerned, she informs Amina, the Community Health Promoter (CHP), who is on her regular household visits. Amina examines Ayaan and recognizes that his symptoms are consistent with measles, a priority disease for surveillance. <br>
            At the same time, Amina logs into the m-Dharura platform. She submits an event report detailing Ayaan’s symptoms, the number of affected individuals in the household, the geographic location, and any additional observations. James, the Community Health Assistant (CHA), receives the notification and begins the verification process. He visits Fatuma’s household to assess Ayaan’s condition and checks with other CHPs in the area to determine if similar cases have been reported. After verifying that the case is clinically consistent with measles, he escalates the event to Dr. Wanjiru, the Sub-County Disease Surveillance Coordinator, through the m-Dharura platform. She reassures Fatuma and advises her to take Ayaan to the nearest health facility for further examination and testing. <br>
            Meanwhile, Fatuma takes Ayaan to the health facility, where Rita, a clinician conducts a physical examination and suspects measles. Ayaan is admitted to the facility for supportive care, including fever management, hydration therapy, and vitamin A supplementation to prevent complications. At the same time, the health facility team initiates contact tracing to assess the risk of further transmission in the community. <br>
            To confirm the diagnosis, Dr. Wanjiru orders laboratory tests. Ali, the Laboratory Technologist, collects a blood sample and KEMRI performs a measles IgM test. The results confirm that Ayaan has measles. <br>
            Dr. Wanjiru receives both the verified measles case from the CHA and the lab-confirmed results from KEMRI.  She assesses the risk of the outbreak by evaluating the number of reported cases, the potential for transmission, and immunization coverage in the affected area. Recognizing the high transmissibility of measles, she advises the Sub-County Health Officer, Sarah, to initiate an urgent response. Sarah immediately alerts the county health team through email and WhatsApp messages. Sarah ensures that the case investigation form (MOH 502) is completed for Ayaan. <br>
            After five days of supportive care, Ayaan’s condition improved, and he was discharged from the health facility. Amina follows up at Fatuma’s home to provide health education on preventing measles transmission, ensuring that Ayaan’s siblings receive vaccination if needed, and identifying any new suspected cases in the area. <br>
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>Event Detection</li>
                    <li>Laboratory Investigation Confirmation</li>
                    <li>Reporting</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>


### Scenario 2: Reporting and Analysis
<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Health facility focal person</i></span>: Achieng
                    </li>
                    <li>
                        <span><i>SCDSC</i></span>: Dr. Wanjiru
                    </li>
                    <li>
                        <span><i>National disease surveillance coordinator</i></span>: Dr. Otieno
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            At the end of each epidemiological week, Dr. Achieng, the health facility focal person at Lari Sub-County Hospital, reviews the weekly case records from various service delivery points, including outpatient, inpatient, and laboratory departments. She compiles the data into the Weekly Epidemic Monitoring Tool (MOH 505), ensuring that all suspected, confirmed, and reported cases of priority diseases are accurately recorded. By Monday afternoon, she finalizes the report and submits it to the Sub-County Disease Surveillance Coordinator (SCDSC). <br>
            Upon receiving the reports from Lari Hospital and other health facilities within the sub-county, Dr. Wanjiru begins the process of consolidating the data. She carefully reviews each submission, checking for discrepancies or missing information. Once the data is verified, she compiles a comprehensive sub-county report and uploads it into the web-based Kenya Health Information System (KHIS) by Wednesday of the following week. <br>
            At the health facility, Achieng, alongside the facility management team, analyzes the aggregated weekly data to identify trends, unusual increases in certain diseases, and any emerging patterns of concern. Noting a slight increase in cases of acute diarrheal diseases among children under five, she initiates a discussion with the clinical team to investigate possible causes, such as water contamination or foodborne illness. She then prepares a brief summary report and shares it with facility leadership to inform targeted public health interventions. <br>
            Similarly, at the sub-county level, Dr. Wanjiru conducts a broader analysis of reported disease patterns across multiple health facilities. She identifies geographic clusters of reported cases and assesses the potential need for further investigation. She also compiles her findings into a brief summary report and shares it with the county disease surveillance team. <br>
            At the national level, Dr. Otieno, the National Disease Surveillance Coordinator, and his team access KHIS data from all sub-counties and counties. They perform an in-depth epidemiological analysis to detect any emerging outbreaks, assess disease burden, and evaluate trends over time. They generate a comprehensive Weekly Epidemiological Bulletin that highlights key findings, priority areas for action, and recommendations for interventions. <br>
            By Friday, the national surveillance team disseminates the bulletin to all county and sub-county disease surveillance teams, facility focal persons, and relevant stakeholders. The bulletin provides actionable insights that guide public health decision-making, enabling timely responses to emerging health threats. Based on the information received, county and sub-county teams organize targeted interventions, such as vaccination campaigns, community health education, or intensified disease surveillance in affected areas.
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>Report Generation</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>


### Scenario 3: Outbreak response
<table class="table table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <p><strong>Key Personas</strong></p>
                <ul>
                    <li>
                        <span><i>Client</i></span>: Ann
                    </li>
                    <li>
                        <span><i>National Disease Surveillance Coordinator</i></span>: Dr. Otieno
                    </li>
                    <li>
                        <span><i>Clinician</i></span>: Julie
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            On a Wednesday afternoon, Dr. Otieno, the National Disease Surveillance Coordinator, receives an alert through the Kenya Health Information System (KHIS) indicating a sudden spike in suspected cholera cases in two neighboring sub-counties. The data shows a sharp increase in acute watery diarrhea cases reported over the past week, with several laboratory-confirmed cholera cases from sub-county health facilities. Recognizing the potential for an outbreak, Dr. Otieno immediately convenes the national rapid response team (RRT) for an emergency meeting. <br>
            During the meeting, the team reviews surveillance data, laboratory reports, and epidemiological trends to assess the severity of the situation. Reports from sub-county disease surveillance coordinators indicate that the affected areas rely on a shared water source, which may be contaminated. Given the high transmissibility of cholera, the team classifies the event as a public health emergency requiring an urgent, coordinated response. <br>
            Dr. Otieno formally notifies the Ministry of Health’s Emergency Operations Center (EOC) and recommends activation of the national response mechanism. The Ministry issues an outbreak alert to all county health departments, urging them to enhance surveillance and preparedness. At the same time, Dr. Otieno contacts the World Health Organization (WHO) and the Kenya Red Cross to request logistical and technical support for the response effort. <br>
            A national-level response team, composed of epidemiologists, water and sanitation experts, and risk communication specialists, is deployed to the affected counties to support local health teams. The team works closely with county health officials to conduct a rapid field assessment, including household surveys, environmental investigations, and an assessment of healthcare facility readiness to manage cholera cases. <br>
            To contain the outbreak, the Ministry of Health, in collaboration with county governments, launches a multipronged intervention strategy. The first priority is ensuring that health facilities are equipped to manage cholera cases. Emergency supplies, including rehydration fluids, antibiotics, and personal protective equipment (PPE), are dispatched to the affected sub-counties. Health workers receive refresher training on cholera case management, infection prevention, and proper reporting procedures. <br>
            Simultaneously, national authorities coordinate a large-scale water, sanitation, and hygiene (WASH) intervention. The Ministry of Water and Sanitation, in collaboration with humanitarian partners, distributes water treatment chemicals and deploys mobile water purification units to provide clean drinking water to affected communities. Public health teams conduct door-to-door visits to educate households on proper handwashing, safe water storage, and food hygiene practices. <br>
            Given the rapid spread of the disease, the Ministry of Health and its partners initiate an emergency oral cholera vaccination (OCV) campaign targeting high-risk populations. Vaccine deployment is prioritized for children, the elderly, and people living in informal settlements with poor sanitation. Mobile vaccination teams are dispatched to schools, marketplaces, and community centers to ensure widespread coverage. <br>
            Throughout the response, the national surveillance team continues to monitor the outbreak’s progression through real-time data reporting in KHIS. Daily situation reports are compiled and shared with county and sub-county health teams, guiding adjustments to response strategies based on new developments. Regular media briefings are held to inform the public, dispel misinformation, and encourage preventive measures. <br>
            After two weeks of intensive response efforts, the number of new cholera cases begins to decline. The national team, in collaboration with county health departments, shifts its focus to post-outbreak recovery and prevention. Affected communities receive long-term WASH interventions, and health workers continue active surveillance to detect and contain any potential resurgence of cases. <br>
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>Report Generation and Analysis</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>