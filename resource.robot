*** Settings ***
Library     SeleniumLibrary    ${LONG_TIMEOUT}   run_on_failure=NONE
Library     Collections
Library     String
Library     DebugLibrary
Library     OperatingSystem

Resource    keywords/logics/_LOGICS_IMPORT.robot
Resource    keywords/pages/_PAGES_IMPORT.robot

*** Variables ***
${DISPLAY}
${BROWSER_FIREFOX}          ff
${BROWSER}                  Chrome
${VALID_USER}               sofyanapangestika@gmail.com           
${VALID_PASSWORD}           Sopyana123
${HOME_URL}                 https://eklipse.gg/
${LOGIN_URL}                https://app.eklipse.gg/login

${TURBO_TIMEOUT}            1
${SHORT_TIMEOUT}            3
${MEDIUM_TIMEOUT}           5
${LONG_TIMEOUT}             20

*** Keywords ***
Headless Browser Setup
    Start Virtual Display                2560                      1440

Wait Until Page Loaded Completely
    SeleniumLibrary.Wait For Condition    return document.readyState == 'complete'      timeout=${LONG_TIMEOUT}
