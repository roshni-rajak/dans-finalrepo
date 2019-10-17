*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot

*** Keywords ***
About Us Verify
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${About dans}
  click element  ${About dans}
  sleep  5s
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${CEO Message}
  click element  ${CEO Message}
  sleep  5s
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Our Leaders}
  click element  ${Our Leaders}
  sleep  5s
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Organisation Structure}
  click element  ${Organisation Structure}
  sleep  5s
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Vision Mission Values}
  click element  ${Vision Mission Values}
  sleep  5s
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Contact}
  click element  ${Contact}
  sleep  5s
  mouse over  ${AboutUs}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Our Membership}
  click element  ${Our Membership}
  sleep  5s

