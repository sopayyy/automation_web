*** Settings ***
Suite Teardown      Close Browser
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
    Input Text      id=username     ${VALID_USER}
    Input Password  id=password     ${VALID_PASSWORD}
    Click Element   xpath=//button[@type='submit']
    Wait Until Page Contains    Home
    Run Keyword And Ignore Error    Click Element    xpath=//button[@class='btn btn-link--highlight' and contains(text(), 'Skip for now')]
    Click Element   class=ic-user
    Wait Until Page Contains    ${VALID_USER}
    #Page Should Contain Element    xpath=//small[@class='role-name' and contains(text(), '${VALID_USER}')]
    Close Browser