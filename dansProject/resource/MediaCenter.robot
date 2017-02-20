*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot

*** Keywords ***
Media Center Verify
   click element  ${Media Center}
   wait until page contains element  ${Text LatestUpdate}
   wait until page contains element  ${Text Event}
   wait until page contains element  ${Text ImageLibrary}
   wait until page contains element  ${Text Videos}
   wait until page contains element  ${Text NewsClips}
   wait until page contains element  ${Text PressRelease}
   wait until page contains element  ${Text Blog MediaCenter}
VideoUpload Verify
  sleep  7s
  click element  ${VideoLibrary Link}
  sleep  7s
  click element  ${VideoLibrary UploadButton}
  select frame  ${VideoLibrary iframe}
  choose file  ${VideoLibrary BrowseButton}  C:\\Users\\Public\\Videos\\Sample Videos\\Wildlife.wmv
  click element  ${VideoLibrary OkButton}
  sleep  30s
  #select frame  xpath=//iframe[@class="ms-dlgFrame"]
  input text  ${VideoLibrary Title}  abc
  click element  ${VideoLibrary SaveButton}
  sleep  30s
  click element  ${Home}
  sleep  10s
Event Add
  click element  ${Employee Corner}
  sleep  4s
  click element  ${Employee SettingMenu}
  click element  ${Employee SiteContent}
  sleep  7s
  click element  ${Event Link}
  sleep  7s
  click element  ${AddNew Event}
  sleep  7s
  input text  ${Event Title}  UAE Testing Event
  select from list by value  xpath=//select[@class='ms-RadioText']  UAE National Events
  input text  ${Event ShortDescription}  Short Description
  click element  ${Event IsPublished}
  input text  xpath=//div[@role='textbox']  testing
  click element  ${Event Save}
  click element  ${Media Center}
  sleep  10s
Verify Event on MediaCenter
  click element  xpath=//div[@id="viewallEvents"]//a[@href="/MediaCentre/Pages/MediaDetails.aspx?pg=mc&type=mediacentreevents"]//img[@src="/SiteAssets/images/icon-view-all.png"]
  sleep  10s
  wait until page contains element  xpath=//a[contains(.,'UAE Testing Event')]
  click element  ${Media Center}
  sleep  10s
Press Release Add
  click element  xpath=//button[contains(@id,'Settings')]
  click element  xpath=//a[contains(.,'Site contents')]
  sleep  10s
  click element  ${PressRelease Link}
  sleep  10s
  click element  ${PressRelease AddNew}
  sleep  3s
  input text  ${PressRelease Title}  Test Press Release
  input text  ${PressRelease ShortDiscription}  Release description
  click element  xpath=//div[@class="ms-rtestate-field ms-rtefield ms-inputBox"]//div[@role='textbox']
  input text  ${PressRelease Discription}  description
  click element  ${PressRelease Save}
  sleep  10s
Delete Press Release
  click element  ${PressRelease EditButton}
  sleep  5s
  click element  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  open context menu  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[2]/td[1]
  click element  ${PressRelease Delete}
  choose ok on next confirmation
  confirm action
New Clip Add
  click element  xpath=//button[contains(@id,'Settings')]
  click element  xpath=//a[contains(.,'Site contents')]
  sleep  4s
  click element  ${NewsClip Link}
  sleep  5s
  click element  ${AddNew NewsClip}
  input text  ${NewsClip Title}  NewsClip Test
  click element  ${NewsClip AttachButton}
  sleep  4s
  choose file  ${NewsClip Browse}  C:\\Users\\Public\\Pictures\\Sample Pictures\\Chrysanthemum.jpg
  sleep  5s
  click element  ${NewsClip OkButton}
  sleep  3s
  click element  ${NewsClip SaveButton}
NewsClip Verify On MediaCenter
  click element  ${Media Center}
  wait until page contains element  xpath=//a[contains(.,'NewsClip Test')]
NewsClip Delete Verify
  click element  xpath=//button[contains(@id,'Settings')]
  click element  xpath=//a[contains(.,'Site contents')]
  sleep  4s
  click element  ${NewsClip Link}
  sleep  5s
  click element  ${EditButton NewsClip}
  sleep  6s
  click element  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[4]/td[1]
  open context menu  xpath=//*[@id='spgridcontainer_WPQ2_leftpane_mainTable']/tbody/tr[4]/td[1]
  click element  ${NewsClip Delete}
  choose ok on next confirmation
  confirm action
Image Library Verify
  click element  ${Media Center}
  sleep  10s
  click element  ${ImageLibrary Link}
  sleep  20s
  click element  ${ImageLibrary UploadButton}
  sleep  5s
  select frame  ${ImageLibrary iframe}
  choose file  ${ImageLibrary Browse}  C:\\Users\\Public\\Pictures\\Sample Pictures\\Chrysanthemum.jpg
  click element  ${ImageLibrary OkButton}
  sleep  30s
  SELECT WINDOW  Title=Images Library - Default
  click element  ${Library}
  sleep  10s






