*** Settings ***
Documentation   this is some basic information about the whole suit
Library   Selenium2Library
Resource  Variables.robot
*** Keywords ***
My Career
  open browser  http://spuser1:dans@2016@spdc:1761  FireFox
  Maximize browser window
  sleep  10s
  mouse over  ${MyCareer}
  WAIT UNTIL ELEMENT IS VISIBLE  ${EMIRATI PROGRAMME}
  click element  ${EMIRATI PROGRAMME}
  sleep  5s
  mouse over  ${MyCareer}
  WAIT UNTIL ELEMENT IS VISIBLE  ${EMPLOYEE DEVELOPMENT PROGRAMME​}
  click element  ${EMPLOYEE DEVELOPMENT PROGRAMME​}
  sleep  5s
  mouse over  ${MyCareer}
  WAIT UNTIL ELEMENT IS VISIBLE  ${Latest Vacancies }
  click element  ${Latest Vacancies }
  sleep  10s