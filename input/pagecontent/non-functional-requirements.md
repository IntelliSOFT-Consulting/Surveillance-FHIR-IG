# Non-Functional Requirements


| Requirement ID       | Category                                    | Non-Functional Requirement |
|----------------------|--------------------------------------------|----------------------------|
| IDSR.NFXNREQ.001    | Performance                                | Make efficient use of data communication time |
| IDSR.NFXNREQ.002    | Performance                                | Make efficient use of the capabilities of lower-cost mobile devices |
| IDSR.NFXNREQ.003    | Performance                                | Support data capacity considerations (including those for data transmission, storage, and processing) for all users over the expected lifetime of the system |
| IDSR.NFXNREQ.004    | Performance                                | Use a database that can scale to support projected transaction volume |
| IDSR.NFXNREQ.005    | Performance                                | Provide real-time response to transactions submitted by connected devices up to the configured national volume level |
| IDSR.NFXNREQ.006    | Performance                                | Provide real-time messages such as "report processing" or "in progress" for transactions that affect system performance |
| IDSR.NFXNREQ.007    | Compatibility                              | Use open standards to promote interoperability |
| IDSR.NFXNREQ.008    | Compatibility                              | Exchange actionable data between systems (need to enforce semantic interoperability) |
| IDSR.NFXNREQ.009    | Compatibility                              | Provide access from internet-enabled devices |
| IDSR.NFXNREQ.010    | Compatibility                              | Support flexible models for data collection (e.g., including paper forms, web forms, SMS, barcode, etc.) |
| IDSR.NFXNREQ.011    | Compatibility                              | Comply with industry standards for data exchange |
| IDSR.NFXNREQ.012    | Compatibility                              | Operate with open-source or third-party reporting tools |
| IDSR.NFXNREQ.013    | Compatibility                              | Comply with industry standards for tracking and tracing of supplies |
| IDSR.NFXNREQ.014    | Compatibility                              | Enable streamlined data collection, organization, and dissemination |
| IDSR.NFXNREQ.015    | Interoperability                          | Provide access to data through application programming interfaces |
| IDSR.NFXNREQ.017    | Interoperability                          | Allow for data exchange and efficient synchronization across multiple facilities and points of service when the internet is available, even when it is intermittent and slow |
| IDSR.NFXNREQ.018    | Configuration                             | Configure the system centrally |
| IDSR.NFXNREQ.019    | Configuration                             | Configure business rules in line with guidelines and standard operating procedures |
| IDSR.NFXNREQ.020    | Configuration                             | Configure error messages |
| IDSR.NFXNREQ.021    | Configuration                             | Enable configuration to any national or subnational administrative structure or number of levels |
| IDSR.NFXNREQ.022    | Usability                                 | Allow for flexible configurations based on the context of use, including the physical, regulatory, and social environment |
| IDSR.NFXNREQ.023    | Usability                                 | Transmit information in a language (script or voice) that is understood by the user population |
| IDSR.NFXNREQ.024    | Usability                                 | Emphasize ease of use and learnability to reduce training costs |
| IDSR.NFXNREQ.025    | Usability                                 | Be able to be learned easily by end users and supervisors to meet specified goals of system effectiveness and efficiency |
| IDSR.NFXNREQ.026    | Usability                                 | Enable easy data collection, organization (predefined drop-down menus, searchable lists, radio buttons, checkboxes), and dissemination |
| IDSR.NFXNREQ.028    | Usability                                 | Allow users to find features in two clicks or fewer |
| IDSR.NFXNREQ.029    | Usability                                 | Provide a search interface to reduce data-entry burden and improve accuracy on mobile devices |
| IDSR.NFXNREQ.030    | Usability                                 | Support real-time data-entry validation and feedback to prevent data-entry errors from being recorded |
| IDSR.NFXNREQ.031    | Usability                                 | Support ability to calculate values on behalf of users (eliminating need to add, subtract, multiply, or divide) |
| IDSR.NFXNREQ.034    | Usability                                 | Be user-friendly for people with low computer literacy |
| IDSR.NFXNREQ.035    | Usability                                 | Provide informative error messages and tooltips |
| IDSR.NFXNREQ.036    | Usability                                 | Alert the user when navigating away from a form without saving |
| IDSR.NFXNREQ.037    | Usability                                 | Use industry-standard user interface practices and apply them consistently throughout the system |
| IDSR.NFXNREQ.038    | Usability                                 | Provide guidance to users to better support clinical guidelines and best clinical practices |
| IDSR.NFXNREQ.039    | Usability                                 | Be reliable and robust (minimize the number of system crashes) |
| IDSR.NFXNREQ.040    | Usability                                 | Adjust display to fit small screens (e.g., mobile phones) |
| IDSR.NFXNREQ.041    | Reliability                               | Enable a task to be cancelled and rolled back to previous state |
| IDSR.NFXNREQ.042    | Reliability                               | Enable users to work offline and then synchronize data when data connection is available |
| IDSR.NFXNREQ.043    | Reliability                               | Allow a task to be interrupted and resumed |
| IDSR.NFXNREQ.044    | Reliability                               | Enable earlier versions of a record to be recoverable |
| IDSR.NFXNREQ.045    | Reliability                               | Enable backup of data so that information is recoverable in the event of a system or hardware failure |
| IDSR.NFXNREQ.046    | Reliability                               | Accommodate loss of connectivity to hosted application (network may become unavailable while a user is in the process of submitting a form) |
| IDSR.NFXNREQ.047    | Reliability                               | Be able to reliably perform tasks within appropriate time with resistance to failures or deadlocks |
| IDSR.NFXNREQ.048    | Reliability                               | Be deployed in an environment subject to power loss |
| IDSR.NFXNREQ.049    | Reliability                               | Allow for client devices with low bandwidth or irregular connectivity |
| IDSR.NFXNREQ.050    | Confidentiality, Privacy, and Security  | Prevent unauthorized access to clients' protected health information |
| IDSR.NFXNREQ.051    | Confidentiality, Privacy, and Security  | Prevent updates to the database occurring only partially (atomicity), which can cause greater problems than rejecting an entire submission of a form|
| IDSR.NFXNREQ.052    | Confidentiality, Privacy, and Security  | Trace and record changes to data taken by the system and by users (update/delete/add/access)|
| IDSR.NFXNREQ.053    | Confidentiality, Privacy, and Security  | Allow the administrator to establish access privileges and priorities|
| IDSR.NFXNREQ.054    | Confidentiality, Privacy, and Security  |Support definitions of unlimited roles and assigned levels of access, viewing, entry, editing and auditing|
| IDSR.NFXNREQ.055    | Confidentiality, Privacy, and Security  | Require each user to authenticate by role before gaining access to the system|
| IDSR.NFXNREQ.056    | Confidentiality, Privacy, and Security  | Provide flexible password control to align to national policy and standard operating procedures, including password format requirements|
| IDSR.NFXNREQ.057    | Confidentiality, Privacy, and Security  | Protect system servers through the use of an internet firewall|
| IDSR.NFXNREQ.058    | Confidentiality, Privacy, and Security  | Comply with country's existing health information storage policies|
| IDSR.NFXNREQ.059    | Confidentiality, Privacy, and Security  | Protect against viruses and malware|
| IDSR.NFXNREQ.060    | Confidentiality, Privacy, and Security  | Allow for maintenance of security updates|
| IDSR.NFXNREQ.061    | Confidentiality, Privacy, and Security  | Have a source code audit against security threats|
| IDSR.NFXNREQ.062    | Confidentiality, Privacy, and Security  | Log all activities performed by the user, including date and time stamp|
| IDSR.NFXNREQ.063    | Confidentiality, Privacy, and Security  | Maintain a transaction log history (system logins and logouts)|
| IDSR.NFXNREQ.064    | Confidentiality, Privacy, and Security  | Support privacy policies such as identifying who has access to the health data, and what data can be accessed|
| IDSR.NFXNREQ.065    | Confidentiality, Privacy, and Security  | Design software security protections to ensure system availability|
| IDSR.NFXNREQ.O66 | Confidentiality, Privacy, and Security  | Provide a means to ensure confidentiality and privacy of personal health information|
| IDSR.NFXNREQ.067    | Confidentiality, Privacy, and Security  | Provide the ability for allowed users to view confidential data|
| IDSR.NFXNREQ.068    | Confidentiality, Privacy, and Security  | Anonymize data that are exported from the system|
| IDSR.NFXNREQ.069    | Confidentiality, Privacy, and Security  | Prevent remembering username and password|
| IDSR.NFXNREQ.070    | Confidentiality, Privacy, and Security  | Automatically log out the user after a specified time of inactivity|
| IDSR.NFXNREQ.071    | Confidentiality, Privacy, and Security  | Provide encrypted communication between components|
| IDSR.NFXNREQ.072    | Confidentiality, Privacy, and Security  | Provide secure data transmission methods to prevent others from seeing data sent from one computer to another by using data encryption and private networks across public networks|
| IDSR.NFXNREQ.073    | Confidentiality, Privacy, and Security  | Notify the user to change their password the first time they log in|
| IDSR.NFXNREQ.074    | Confidentiality, Privacy, and Security  | Provide a mechanism to securely change a user's password|
| IDSR.NFXNREQ.075    | Confidentiality, Privacy, and Security  | Notify the user of a password change to their account|
| IDSR.NFXNREQ.076    | Confidentiality, Privacy, and Security  | Reset a user's password in a secure manner|
| IDSR.NFXNREQ.077    | Confidentiality, Privacy, and Security  | Lock a user out after a specified number of wrong password attempts|
| IDSR.NFXNREQ.078    | Confidentiality, Privacy, and Security  | Notify a user if their account is locked due to wrong password attempts|
| IDSR.NFXNREQ.079    | Confidentiality, Privacy, and Security  | Record all authentication violations|
| IDSR.NFXNREQ.080    | Confidentiality, Privacy, and Security  | Log access to views of individual client records|
| IDSR.NFXNREQ.081    | Confidentiality, Privacy, and Security  | Log access to data summaries, reports, analysis and visualization features |
| IDSR.NFXNREQ.082    | Confidentiality, Privacy, and Security  | Log exchange of data with other systems|
| IDSR.NFXNREQ.083    | Confidentiality, Privacy, and Security  | Generate analysis of the use of different system features and reports|
| IDSR.NFXNREQ.084    | Confidentiality, Privacy, and Security  | Log all data and system errors |
| IDSR.NFXNREQ.085    | Confidentiality, Privacy, and Security  | Allow user with permission to create a new user and temporary password|
| IDSR.NFXNREQ.086    | Confidentiality, Privacy, and Security  | Allow roles to be associated with specific geographical areas or health-care facilities|
| IDSR.NFXNREQ.087    | Confidentiality, Privacy, and Security  | Allow cascading user management and assignment of roles|
| IDSR.NFXNREQ.088    | Confidentiality, Privacy, and Security  | Allow user to change their own password|
| IDSR.NFXNREQ.089    | Confidentiality, Privacy, and Security  | Allow admin user to request password reset |
| IDSR.NFXNREQ.090    | Confidentiality, Privacy, and Security  | Notify the user to regularly change their password |
| IDSR.NFXNREQ.091    | Confidentiality, Privacy, and Security  | Allow each user to be assigned to one or more roles |
| IDSR.NFXNREQ.092    | Maintanability  | Be built using technologies that enable local control, open competition and transparency of the code |
| IDSR.NFXNREQ.093    | Maintanability   | Have adequate support resources to ensure reusability, scalability and sustainability|
| IDSR.NFXNREQ.094    | Maintanability  | Support reusability of the system source code |
| IDSR.NFXNREQ.095    | Maintanability   | Promote easier acquisition by supporting a range of devices and form factors|
| IDSR.NFXNREQ.096    | Maintanability  | Able to access the system at all levels/stores |
| IDSR.NFXNREQ.097    | Maintanability   | Enable local control of operations |
| IDSR.NFXNREQ.098    | Maintanability   | Be well-documented, including known issues |
| IDSR.NFXNREQ.099    | Maintanability   | Support repair or upgrade of a component in a running system |
| IDSR.NFXNREQ.100    | Maintanability  | Provide a unique version number for each version (all future updates and releases) |
| IDSR.NFXNREQ.101    | Maintanability   | Enable the system to detect incompatible versions of software running on different components|
| IDSR.NFXNREQ.102    | Maintanability   | Have a support process that tracks and documents bugs from discovery to resolution |
| IDSR.NFXNREQ.103    | Maintanability   | Enable access to the central system from all levels of the health system|
| IDSR.NFXNREQ.104    | Maintanability   | Support changes to organizational alignment of facilities and personnel |
| IDSR.NFXNREQ.105    | Maintanability  | Include an administrable content management system |
| IDSR.NFXNREQ.106    | Maintanability  |Provide detailed architectural, operational and testing documentation |
| IDSR.NFXNREQ.107    | Portability   | Be able to provide continuity and access to data throughout changes in infrastructure (e.g. telecommunication, power) at the health-post level |
| IDSR.NFXNREQ.108    | Portability | Support extensibility and/or the ability to accept new services or functionality|
| IDSR.NFXNREQ.109    | General  | Generate IDs that are unique across different locations or sites |
| IDSR.NFXNREQ.110    | General   | Report version number when saving data to the database |
| IDSR.NFXNREQ.111    | General | Show the number of records that are not yet synchronized |
| IDSR.NFXNREQ.112    | General | Have the ability to easily back up information |
| IDSR.NFXNREQ.113    | General | Warn user if no valid back-up for more than a predefined number of days |
| IDSR.NFXNREQ.114    | General | Support the ability to store images and other unstructured data|
| IDSR.NFXNREQ.115    | Scalability  | Scalable to accommodate new demands |
| IDSR.NFXNREQ.116    | Scalability  | Be able to accommodate at least [x number of] health-care facilities|
| IDSR.NFXNREQ.117    | Scalability  | Be able to accommodate at least [x number of] concurrent users |
