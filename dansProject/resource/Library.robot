*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot
*** Keywords ***
Library Page Verify
   click element  ${Library}
   sleep  7s
   wait until page contains element  ${Text AirTraffic library}
   wait until page contains element  ${Text Quarterly Reports}
   wait until page contains element  ${Text dansStrategy library}
   wait until page contains element  ${Text SafetyReports}
   wait until page contains element  ${Text SafetyRegulations}
   wait until page contains element  ${Text ProjectUpdate}
   wait until page contains element  ${Text IndustryReport}
   wait until page contains element  ${Text Stakeholders}
   wait until page contains element  ${Text CorporateBrand}
   wait until page contains element  ${Text InternalCampaigns}
   wait until page contains element  ${Text PoliciesAndGuidelines}
   wait until page contains element  ${Text UsefulLinks}
Verify Library Page Link
   click element  ${AirTraffic Link}
   wait until page contains element  xpath=//h3[contains(.,'AIR TRAFFIC MOVEMENT')]
   click element  ${Back Button}
   sleep  5s
   click element  ${QuarterlyReport Link}
   wait until page contains element  xpath=//h3[contains(.,'QUARTERLY REPORTS​​')]
   click element  ${Back Button}
   sleep  6s
   click element  ${dansSTRATEGY Link}
   wait until page contains element  xpath=//h3[contains(.,'dans STRATEGY')]
   click element  ${Back Button}
   sleep  6s
   click element  ${SafetyReport Link}
   wait until page contains element  xpath=//h3[contains(.,'SAFETY REPORTS')]
   click element  ${Back Button}
   sleep  6s
   click element  ${SafetyRegulations Link}
   wait until page contains element  xpath=//h3[contains(.,'Safety Regulations')]
   click element  ${Back Button}
   sleep  6s
   click element  ${ProjectUpdate Link}
   wait until page contains element  xpath=//h3[contains(.,'PROJECTs UPDATE')]
   click element  ${Back Button}
   sleep  6s
   click element  ${IndustryReport Link}
   wait until page contains element  xpath=//h3[contains(.,'​​​INDUSTRY REPORTS AND RESEARCH PAPERS​ ')]
   click element  ${Back Button}
   sleep  6s
   click element  ${StakeHolders Link}
   wait until page contains element  xpath=//h3[contains(.,'​STAKE​HOLDERS')]
   click element  ${Back Button}
   sleep  6s
   click element  ${CorporateGuidelines Link}
   wait until page contains element  xpath=//h3[contains(.,'​CORPORATE BRAND & GUIDELINES​​​​')]
   click element  ${Back Button}
   sleep  6s
   click element  ${InternalCampigns Link}
   wait until page contains element  xpath=//h3[contains(.,'INTERNAL CAMPAI​GNS​​​​')]
   click element  ${Back Button}
   sleep  6s
   click element  ${Polices Link}
   wait until page contains element  xpath=//h3[contains(.,'POLICIES & GUIDELINES')]
   click element  ${Back Button}
   sleep  6s
   click element  ${UseFulLinks Link}
   wait until page contains element  xpath=//h3[contains(.,'USEFUL LINKS​​')]
   click element  ${Back Button}
   sleep  6s