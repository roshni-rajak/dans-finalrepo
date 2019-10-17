*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot
*** Keywords ***

Department Verify
  mouse over  ${DEPARTMENTS}
  WAIT UNTIL ELEMENT IS VISIBLE   ${AIM}
  click element  ${AIM}
  sleep  5s
  mouse over  ${DEPARTMENTS}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Air Traffic Control}
  click element  ${Air Traffic Control}
  sleep  5s
  mouse over  ${DEPARTMENTS}
  WAIT UNTIL ELEMENT IS VISIBLE   ${Approach}
  click element  ${Approach}
  sleep  5s

