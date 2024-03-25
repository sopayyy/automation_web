*** Settings ***
# Suite Setup         Open Browser For Vidio Page
# Suite Teardown      Close All Browsers
# Test Setup          Delete All Cookies
# Test Teardown       Capture Failed and Logout User
Resource            ../resource.robot
Force Tags          User

*** Test Cases ***
11A Open and Verify Landing page
    Open Browser     ${HOME_URL}    ${BROWSER}
    Wait Until Page Loaded Completely
    #class="header-main"

12A Login Test
    Open Browser     ${LOGIN_URL}    ${BROWSER}
    Wait Until Page Loaded Completely