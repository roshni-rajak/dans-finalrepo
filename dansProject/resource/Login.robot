*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library

*** Keywords ***
User login
    open browser  http://spuser5:dans@2016@spdc:1761  FireFox
    Maximize browser window

Close BrowserWindow
    close browser

AdminUser login
    open browser  http://spuser1:dans@2016@spdc:1761  FireFox
    Maximize browser window