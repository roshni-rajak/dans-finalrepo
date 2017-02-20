*** Settings ***
Resource  ../resource/Login.robot
Resource  ../resource/EmployeeCorner.robot
Resource  ../resource/Home.robot
Resource  ../resource/MediaCenter.robot
Resource  ../resource/Library.robot
Resource  ../resource/MyCareer.robot
Resource  ../resource/AboutUs.robot
Resource  ../resource/Department.robot

*** Test Cases ***
Verify User login
    [tags]  Smoke
   Login.User login

Home Page Verification
   Home.Home Page Verify

Home Page NewsUpdate Redirect
   Home.News Update View All

User Site Suggestion Verification
   Home.Add Suggestion

Browser Close
   Login.Close BrowserWindow

Admin Site Load Verification
   Login.AdminUser login

OSHE and Connector Verification
   Home.Oshe Connector Verify

Project Update Upload Verification
   Home.Project Upload

Verification GPR-QPLUS-dansContact
   Home.GRP-QPLUS-CONTACT

dans Strategy Verification
   Home.Strategy Upload

EmployeeCorner Page Verification
   EmployeeCorner.Verify Employee Corner

Verify Add EmployeeEvent
   EmployeeCorner.EmployeeEvent Add

Verify Delete EmployeeEvent
   EmployeeCorner.EmployeeEvent Delete

Employee Event ErrorMessage Verify
   EmployeeCorner.EmployeeEvent Page

Discount Add Verification
   EmployeeCorner.Discount Add

NewsUpdate discount Verification
   EmployeeCorner.Verify News update

Delete Discount Verification
   EmployeeCorner.Delete Discount Verify

Staff Add Verification
   EmployeeCorner.Staff Update Verify

Staff Delete Verification
   EmployeeCorner.Staff Update Delete

Employee Handbook Verification
   EmployeeCorner.EmployeeHandBook Upload

Induction Pack Verification
   EmployeeCorner.InductionPack Upload

Health And Insurance Policy Verification
   EmployeeCorner.Health And Insurance

New To Dubai Handbook verification
   EmployeeCorner.New to Dubai handbook Verify

Blog add Verification
   Home.Add Blog Post

Blog Delete Verification
   Home.Delete Blog Post

Delete Suggestion Admin Site
   Home.Delete Suggestion

Footer Verification
   Home.Footer Verify

Footer Contact Detail Verification
   Home.FooterContact

Footer Site Map Verification
   Home.SiteMap

Rotating Banner Verification
   Home.Rotating Banner Verify

Rotating Banner Delete Verification
   Home.Rotating Banner Delete Verify

Media Center Page Verification
   MediaCenter.Media Center Verify

Media center VideoUpload Verification
   MediaCenter.VideoUpload Verify

Media Center Event Add Verification
   MediaCenter.Event Add

Verification Event on MediaCenter
   MediaCenter.Verify Event on MediaCenter

Press Release Add Verififcation
   MediaCenter.Press Release Add

Delete Press Release Verification
   MediaCenter.Delete Press Release

New Clip Add Verification
   MediaCenter.New Clip Add

NewsClip Verification On MediaCenter
   MediaCenter.NewsClip Verify On MediaCenter

Image Library Verification
   MediaCenter.Image Library Verify

Library Page Verification
   Library.Library Page Verify

Library Link Verification
   Library.Verify Library Page Link

My Career Page Verification
   MyCareer.My Career

About Us Verification
  AboutUs.About Us Verify

Department Verification
  Department.Department Verify

Browser Admin Close
   Login.Close BrowserWindow



