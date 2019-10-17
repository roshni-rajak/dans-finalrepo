*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot
*** Keywords ***
Verify Employee Corner
  click element  ${Employee Corner}
  wait until page contains element  ${Text StaffUpdates}
  wait until page contains element  ${Text LatestDiscount}
  wait until page contains element  ${Text EmployeeEvent}
  wait until page contains element  ${Text AwardAndRecognitions}
  #wait until page contains element  xpath=//h4[contains(.,'Employee handbook ')]
  wait until page contains element  ${Text InductionPack}
  wait until page contains element  ${Text HealthPolicy}
  wait until page contains element  ${Text Connectors Employee}
  wait until page contains element  ${Text NewToDubai}
  wait until page contains element  ${Text OSHE}
EmployeeEvent Add
  click element  ${Employee Corner}
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${Event Link}
  sleep  7s
  click element  ${AddNew Event}
  sleep  7s
  input text  ${Event Title}  first Title
  input text  ${Event ShortDescription}  Short Description
  click element  ${Event IsPublished}
  input text  ${Event Description}  Description
  click element  ${Event Save}
  sleep  30s
EmployeeEvent Delete
  sleep  20s
  click element  ${Event EditLink}
  click element  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  #click element  xpath=//td[contains(@style,'rgb(42, 141, 212)')and @role="presentation"]
  open context menu  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  click element  ${Event Delete}
  choose ok on next confirmation
  confirm action
EmployeeEvent Page
  click element  ${Employee Corner}
  #click element    xpath=//button[@aria-label='Open the Settings menu']//span
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${Event Link}
  sleep  7s
  click element  xpath=//span[@class='ms-list-addnew-imgSpan20']
  click element  ${Event Save}
  sleep  7s
  wait until page contains element  xpath=//span[@id='Error_Title_fa564e0f-0c70-4ab9-b863-0177e6ddd247_$TextField']
  wait until page contains element  xpath=//span[@id='Error_ShortDescription_0757d875-2123-46d5-bd3c-be5c09909bae_$TextField' ]
  wait until page contains element  xpath=//span[@id='Error_Description_9eeff009-2c89-4001-a798-1b543a5deaf3_$TextField_topDiv']
  click element  ${Media Center}
Discount Add
  sleep  30s
  click element  ${Employee Corner}
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${Discount Link}
  sleep  7s
  click element  ${AddNew Discount}
  sleep  7s
  input text  ${Discount Title}  Test Discount
  input text  ${Discount ShortDiscription}  discount short description
  input text  ${Discount Discription}  discount description
  click element  ${Discount Save}
   sleep  30s
Verify News update
   click element  ${Home}
   sleep  10s
   wait until page contains element  xpath=//h4[contains(.,'Test Discount')]
Delete Discount Verify
  click element  ${Employee Corner}
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${Discount Link}
  sleep  7s
  click element  ${Discount EditLink}
  sleep  4s
  click element  xpath=.//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  open context menu  xpath=.//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  click element  ${Discount Delete}
  choose ok on next confirmation
  confirm action
Staff Update Verify
  click element  ${Employee Corner}
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${StaffUpdate Link}
  sleep  10s
  click element  ${AddNew Staff}
  sleep  10s
  input text  ${Staff Title}  TestStaffUpdate
  input text  ${Staff ShortDescription}  shortdescription
  input text  ${Staff Role}  role
  click element  ${Staff Save}
  sleep  8s
  click element  ${Employee Corner}
  sleep  10s
  wait until page contains element  xpath=//a[contains(.,'TestStaffUpdate')]
Staff Update Delete
  click element  ${Employee Corner}
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${StaffUpdate Link}
  sleep  2s
  click element  ${Staff Edit}
  click element  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  open context menu  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  click element  ${Staff Delete}
  choose ok on next confirmation
  confirm action
EmployeeHandBook Upload
  click element  ${Employee Corner}
  sleep  30s
  click element  ${EmployeeHandbook Link}
  sleep  7s
  click element  ${EmployeeHandbook upload}
  select frame  ${EmployeeHandbook iframe}
  sleep  10s
  choose file  ${EmployeeHandbook Browse}  D:\\dans User manual - Admin site latest.docx
  click element  ${EmployeeHandbook OkButton}
  sleep  30s
  #select frame  xpath=//iframe[@class="ms-dlgFrame"]
  input text  ${EmployeeHandbook Title}  123
  click element  ${EmployeeHandbook CheckIn}
  #click element  xpath=//span[@class="s4-clust"]//img[@alt="Close dialog"]
  sleep  10s
  select window  Title=Employee HandBook
  click element  ${Employee Corner}
  sleep  30s
InductionPack Upload
  click element  ${InductionPack Link}
  sleep  7s
  click element  ${InductionPack UploadButton}
  select frame  ${InductionPack iframe}
  choose file  ${InductionPack BrowseButton}  D:\\dans User manual - Admin site latest.docx
  click element  ${InductionPack OkButton}
  sleep  30s
  select window  Title=Induction Pack
Health And Insurance
  click element  ${Employee Corner}
  sleep  30s
  click element  ${Health and Insurance Link}
  wait until page contains element  xpath=//h3[@class='headingforlisting margin-left-zero']
  click element  ${Employee Corner}
  sleep  10s
New to Dubai handbook Verify
  click element  ${New to Dubai Link}
  select window  Title=New to Dubai Handbook.pdf
  select window  Title=EMPLOYEE CORNER