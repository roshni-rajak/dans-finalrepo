*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot

*** Keywords ***
Home Page Verify
    set selenium timeout  30s
    wait until page contains element  ${Text NewsUpdate}
    wait until page contains element  ${Text AirTraffic}
    wait until page contains element  ${Text Blog}
    wait until page contains element  ${Text Suggestion}
    sleep  20s
    wait until page contains element  ${Text ProjectUpdate}
    wait until page contains element  ${Text OHSETeam}
    wait until page contains element  ${Text FeaturedVideo}
    wait until page contains element  ${Text Connectors}
    wait until page contains element  ${Text dansStrategy}
    wait until page contains element  ${Text EventCalendar}
    wait until page contains element  ${Text GRP}
    wait until page contains element  ${Text Qpulse}
News Update View All
  click element   ${ViewAll NewsUpdate}
  wait until page contains element  ${MediaCenter Heading}
  click element  ${Home}
  sleep  30s

Add Suggestion
  click element  ${Suggestion Link}
  sleep  10s
  select frame  ${Suggestion Frame}
  input text  xpath=//textarea[@class='textbox']  Test suggestion
  click element  ${Sugg SubmitButton}
  sleep  10s
  click element  ${Sugg CloseButton}

Oshe Connector Verify
  click element  ${Home}
  sleep  30s
  click element  ${OSHE ViewAll}
  wait until page contains element  xpath=//h3[@class='margin-left-zero']
  click element  ${Home}
  sleep  10s
  click element  ${MeetConnector ViewAll}
  wait until page contains element  xpath=//h3[contains(.,'MEET THE CONNECTORS')]

Project Upload
  click element  ${Home}
  sleep  30s
  click element  ${ProjectUpdate ViewAll}
  sleep  7s
  click element  ${ProjectUpdate UploadButton}
  sleep  10s
  select frame  ${ProjectUpdate iframe}
  choose file  xpath=//input[@title='Choose a file']  D:\\dans User manual - Admin site latest.docx
  click element  ${Ok Button}
  sleep  30s
  select window  Title=PROJECTS UPDATE

GRP-QPLUS-CONTACT
   click element  ${Home}
   sleep  30s
   click element  ${GRP Link}
   click element  ${Q Pluse Link}
   click element  ${dans Contact Link}
Strategy Upload
  click element  ${Home}
  sleep  30s
  click element  ${Strategy ViewAll}
  sleep  7s
  click element  ${Strategy UploadButton}
  select frame  ${Strategy iframe}
  choose file  xpath=//input[@aria-describedby='UploadDescription']  D:\\dans User manual - Admin site latest.docx
  click element  ${Ok Button}
  sleep  30s
  select window  Title=dans STRATEGY

Add Blog Post
  click element  ${Home}
  sleep  7s
  click element  ${Blog ViewAll}
  sleep  30s
  click element  ${Blog AddPost}
  sleep  10s
  input text  ${Blog Title Field}  Blog Title
  click element  xpath=//input[@value='Add >']
  click element  ${Blog PublishButton}
  sleep  7s
  #Verify Added Blog
  wait until page contains element  xpath=//a[contains(.,'Blog Title')]

Delete Blog Post
  click element  ${Home}
  sleep  7s
  click element  ${Blog ViewAll}
  sleep  30s
  click element  ${Blog ManagePost}
  sleep  4s
  click element  xpath=//a[@aria-label='By Author, View']
  sleep  4s
  open context menu  xpath=//td[@ class="ms-cellStyleNonEditable ms-vb-itmcbx ms-vb-imgFirstCell"]
  wait until element is visible  ${Blog DeleteButton}
  click element  ${Blog DeleteButton}
  choose ok on next confirmation
  confirm action
  sleep  30s
  click element  ${Home}
   sleep  30s
Delete Suggestion
  click element  ${HomeSetting Menu}
  click element  ${HomeSite content}
  sleep  30s
  click element  ${SuggestionList Link}
  sleep  4s
  click element  ${SuggList EditLink}
  sleep  7s
  click element  xpath=.//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  #click element  xpath=//td[contains(@style,'rgb(42, 141, 212)')and @role="presentation"]
  open context menu  xpath=.//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  click element  ${Suggestion DeleteButton}
  choose ok on next confirmation
  confirm action
Footer Verify
  click element  ${Home}
  wait until page contains element  ${Text Site Map}
  wait until page contains element  ${Text ContactDetails Footer}
  wait until page contains element  ${Text Copy Rights Footer}
  sleep  4s
FooterContact
   click element  ${Home}
   sleep  30s
   click element  ${ContactDetail Link Footer}
   sleep  7s
   wait until page contains element  xpath=//h3[@class='margin-left-zero']
   sleep  3s
SiteMap
    click element  ${Home}
    sleep  30s
    click element  ${SiteMap Link}
    sleep  7s
    wait until page contains element  xpath=//h3[@class='heading margin-left-zero']
    sleep  3s
Rotating Banner Verify
    click element  xpath=//button[@id='O365_MainLink_Settings']
    sleep  4s
    click element  ${HomeSite content}
    sleep  7s
    click element  ${RotatingBanner Link}
    sleep  7s
    click element  ${AddNewBanner Link}
    sleep  4s
    input text  ${TitleField Rotatingbanner}  FirstImage
    input text  ${DescriptionField RotatingBanner}  description Only
    input text  ${RedirectUrl RotatingBanner}  https://www.google.co.in
    click element  ${AttachFile RotatingBanner}
    sleep  30s
    choose file  ${BrowseButton RotatingBanner}  C:\\Users\\Public\\Pictures\\Sample Pictures\\Chrysanthemum.jpg
    click element  ${OkButton RotatingBanner}
    sleep  4s
    click element  ${SaveButton RotatingBanner}
    close browser
    open browser  http://spuser5:dans@2016@spdc:1761  FireFox
    Maximize browser window
    sleep  7s
    click element  xpath=//li[contains(@data-slide-to,'1')]
    #log to console  Hi checking
    #wait until element is visible  xpath=//div[@class="item active"]//a[@href="https://www.google.co.in"]
    #page should contain  xpath=//div[@class="item active"]//a[@href="https://www.google.co.in"]
    click element  xpath=//div[@class="item active"]//a[@href="https://www.google.co.in"]
    sleep  30s
    select window  Title=Google
    title should be  Google
    select window  Title=Home
    close browser
Rotating Banner Delete Verify
    open browser  http://spuser1:dans@2016@spdc:1761  FireFox
    Maximize browser window
    sleep  30s
    click element  ${Home}
    sleep  20s
    click element  xpath=//button[@id='O365_MainLink_Settings']
    sleep  4s
    click element  ${HomeSite content}
    sleep  7s
    click element  ${RotatingBanner Link}
    sleep  7s
    click element  ${EditLink RotatingBanner}
    sleep  10s
    click element  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[3]/td[1]
    open context menu  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[3]/td[1]
    click element  ${DeleteButton RotatingBanner}
    choose ok on next confirmation
    confirm action
