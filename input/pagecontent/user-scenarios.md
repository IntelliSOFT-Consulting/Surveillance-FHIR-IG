# User Scenarios

User scenarios are a narrative description of how the end user would interact with the digital system. The user scenario is provided to help the reader better understand how the system will be used and how it would fit into existing workflows. It is to provide context in a story telling format. Furthermore, within the user scenario, it should be possible to derive the key components that are further elaborated in the rest of the DAK. This includes the core data elements, decision-support logic and core functionality of a digital system that would be needed. Although there is no clear template for a user scenario, it should:
* include personas involved based on the generic personas component;
* have narrative description of who and how a digital system would be used;
* provide details on what kinds of data are collected and decisions are made; and
* reflect the workflows that will be further elaborated on in Component 4: Generic business processes and workflows.


### User scenario for Case/Event detection 

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
                        <span><i>Patient</i></span>: Ayaan
                    </li>
                    <li>
                        <span><i>CHP</i></span>: Amina
                    </li>
                    <li>
                        <span><i>CHA</i></span>: James
                    </li>
                    <li>
                        <span><i>HFSFP</i></span>: Mokeira
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
            Fatuma, a mother in a rural village, notices that her three-year-old son, Ayaan, has developed a cough, high fever, rash, nasal congestion and watery eyes. She initially tried home remedies, but after two days, his condition worsened. Concerned, she informs Amina, the Community Health Promoter (CHP), who is on her regular household visits. Amina assesses Ayaan and recognizes that his symptoms are consistent with a case similarly reported by 1 other community member. She reviews the community event based surveillance pre-defined signals and confirms that the case matches, and can now be considered a detected signal. <br>
            At the same time, Amina logs into the m-Dharura platform. She submits an event report detailing Ayaan’s symptoms, the number of affected individuals in the household, the geographic location, and any additional observations. James, the Community Health Assistant (CHA), receives the notification and begins the verification process. James reaches out to Amina and asks guiding questions, to which Amina answers yes to all. He reports the signal immediately for verification. He also checks with other CHPs in the area to determine if similar cases have been reported. He considers the signal to be a true event, as other CHPs report similar cases. After triaging and verifying that the case is clinically consistent with measles, he escalates the event to Dr. Wanjiru, the Sub-County Disease Surveillance Coordinator, through the m-Dharura platform. She reassures Fatuma and advises her to take Ayaan to the nearest health facility for further examination and testing. <br>
            Fatuma takes Ayaan to the health facility, where Rita, a clinician, takes a comprehensive history, conducts a physical examination and makes an initial diagnosis of measles. Ayaan is admitted to the facility for supportive care, including oral rehydration, antibiotic treatment to prevent super-infection and vitamin A supplementation. Rita informs the HF surveillance focal person, Mokeira, to alert them of a suspected measles case. She also fills the MOH 502 and submits it to Dr. Wanjiru, the SCDSC via whatsapp. At the same time, the health facility team initiates contact tracing to assess the risk of further transmission in the community. <br>
            To confirm the diagnosis, Rita orders laboratory tests. She sends Ayaan to the lab where Ali, the Laboratory Technologist at the health facility lab, collects a blood sample and performs a measles IgM test. The results confirm that Ayaan has measles. Ali sends the confirmed lab results back to the requesting facility, and further sends a report to Dr. Wanjiru, the SCDC. <br>
            Dr. Wanjiru receives both the verified measles case from the health and the lab-confirmed results from Ali.  She assesses the risk of the outbreak by evaluating the number of reported cases, the potential for transmission, and immunization coverage in the affected area. Recognizing the high transmissibility of measles, she advises the Sub-County Health Officer, Sarah, to initiate an urgent response. Sarah immediately alerts the county health team through email and WhatsApp messages. Sarah ensures that the case investigation form (MOH 502) is received and completed from the facility. <br> 
            After five days of supportive care, Ayaan’s condition improved, and he was discharged from the health facility. Amina follows up at Fatuma’s home to provide health education on preventing measles transmission, ensuring that Ayaan’s siblings receive vaccination if needed, and identifying any new suspected cases in the area. <br>
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>CEBS</li>
                    <li>HEBS</li>
                    <li>Lab surveillance</li>
                    <li>Reporting</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>


### User scenario for Case/Event Reporting 
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
                        <span><i>Sub County Disease Surveillance Coordinator (SCDSC)</i></span>: Dr. Wanjiru
                    </li>
                    <li>
                        <span><i>National disease surveillance coordinator</i></span>: Dr. Otieno
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
            On a Wednesday afternoon, Dr. Omoyo, the National Disease Surveillance Coordinator, receives an alert through the Kenya Health Information System (KHIS) indicating a sudden spike in suspected cholera cases in two neighboring sub-counties. The data shows a sharp increase in acute watery diarrhea cases reported over the past week, with several laboratory-confirmed cholera cases from sub-county health facilities. Recognizing the potential for an outbreak, Dr. Omoyo immediately convenes the national rapid response team (RRT) for an emergency meeting. <br>
            During the meeting, the team reviews surveillance data, laboratory reports, and epidemiological trends to assess the severity of the situation. Reports from sub-county disease surveillance coordinators indicate that the affected areas rely on a shared water source, which may be contaminated. Given the high transmissibility of cholera, the team classifies the event as a public health emergency requiring an urgent, coordinated response. <br>
            Dr. Omoyo formally notifies the National Public Health Emergency Operations Center (EOC) and recommends activation of the national response mechanism. An incident management team of experts is constituted, with an incident manager as the lead to coordinate response to the reported public health event.The Ministry issues an outbreak alert to all county disease surveillance coordinators, urging them to enhance surveillance and preparedness. At the same time, Dr. Omoyo contacts the World Health Organization (WHO) and requests logistical and technical support for the response effort. <br>
            A national level response team, composed of epidemiologists, water and sanitation experts, environment officers, and risk communication specialists, is deployed to the affected counties to support local health teams. The team works closely with county health officials to conduct a rapid field assessment, including household surveys, environmental investigations, and an assessment of healthcare facility readiness to manage cholera cases. <br>
            To contain the outbreak, the Ministry of Health, in collaboration with county governments, launches a multipronged intervention strategy. The first priority is ensuring that health facilities are equipped to manage cholera cases. Emergency supplies, including rehydration fluids, antibiotics, and personal protective equipment (PPE), are dispatched to the affected sub-counties. Health workers receive refresher training on cholera case management, infection prevention, and proper reporting procedures.<br>
            Simultaneously, national authorities coordinate a large-scale water, sanitation, and hygiene (WASH) intervention. The Ministry of Water,Sanitation and Irrigation, in collaboration with humanitarian partners, distributes water treatment chemicals and deploys mobile water purification units to provide clean drinking water to affected communities. Public health teams coordinated door-to-door visits by community health promoters to educate households on proper handwashing, safe water storage, and food hygiene practices. <br>
            Given the rapid spread of the disease, the Ministry of Health and its partners initiate an emergency oral cholera vaccination (OCV) campaign targeting high-risk populations. Vaccine deployment is prioritized for children, the elderly, and people living in informal settlements with poor sanitation. Mobile vaccination teams are dispatched to schools, marketplaces, and community centers to ensure widespread coverage. <br>
            Throughout the response, the national surveillance team continues to monitor the outbreak’s progression through real-time data reporting on SHIELD. . Daily situation reports are compiled and shared with county and sub-county health teams, guiding adjustments to response strategies based on new developments. Regular media briefings are held to inform the public, dispel misinformation, and encourage preventive measures. <br>
            After two weeks of intensive response efforts, the number of new cholera cases begins to decline. The national team, in collaboration with county health departments, shifts its focus to post-outbreak recovery and prevention. Affected communities receive long-term WASH interventions, and health workers continue active surveillance to detect and contain any potential resurgence of cases. <br>
            </td>
        </tr>
        <tr>
            <td>
                <p><strong>Corresponding Business Processes</strong></p>
                <ul>
                    <li>Reporting</li>
                </ul>
            </td>
        </tr>
    </tbody>
</table>