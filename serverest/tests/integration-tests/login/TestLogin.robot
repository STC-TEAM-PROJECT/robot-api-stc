*** Settings ***
Resource        ./login_base.robot
Documentation   Login test for API
Force Tags      @login


*** Test Cases ***
Successfully login
    [Tags]    @regression
    Login                       ${EXISTING_EMAIL}    ${EXISTING_PASSWORD}
    Should Be Equal As Numbers  ${response.status_code}               200
    Should Be Equal As Strings  ${response.json()['message']}         ${MSG_LOGIN_SUCCESS}
    Should Not Be Empty         ${response.json()['authorization']}
    Set Global Variable         ${TOKEN}                              ${response.json()['authorization']}

Login with a non-exists email
    [Tags]    @regression
    Login                       ${NON_EXISTING_EMAIL}    ${EXISTING_PASSWORD}
    Should Be Equal As Numbers  ${response.status_code}                401
    Should Be Equal As Strings  ${response.json()['message']}          ${MSG_WRONG_EMAIL_OR_PASS}

Login with a non-exists email and password
    [Tags]  @regression
    Login                       ${NON_EXISTING_EMAIL}    ${NON_EXISTING_PASSWORD}
    Should Be Equal As Numbers  ${response.status_code}                401
    Should Be Equal As Strings  ${response.json()['message']}          ${MSG_WRONG_EMAIL_OR_PASS}

Login with a non-exists password
    [Tags]  @regression
    Login                       ${EXISTING_EMAIL}    ${NON_EXISTING_PASSWORD}
    Should Be Equal As Numbers  ${response.status_code}                401
    Should Be Equal As Strings  ${response.json()['message']}          ${MSG_WRONG_EMAIL_OR_PASS}

Login with an invalid email
    [Tags]  @regression
    Login                       ${INVALID_EMAIL}    ${EXISTING_PASSWORD}
    Should Be Equal As Numbers  ${response.status_code}            400
    Should Be Equal As Strings  ${response.json()['email']}        ${MSG_INVALID_EMAIL}

Login with just the blank email
    [Tags]  @regression
    Login                       ${EMPTY}    ${EXISTING_PASSWORD}
    Should Be Equal As Numbers  ${response.status_code}            400
    Should Be Equal As Strings  ${response.json()['email']}        ${MSG_BLANK_EMAIL}

Login with just the blank password
    [Tags]  @regression
    Login                       ${EXISTING_EMAIL}    ${EMPTY}
    Should Be Equal As Numbers  ${response.status_code}            400
    Should Be Equal As Strings  ${response.json()['password']}     ${MSG_BLANK_PASSWORD}

Login with a blank email and password
    [Tags]  @regression
    Login                       ${EMPTY}    ${EMPTY}
    Should Be Equal As Numbers  ${response.status_code}            400
    Should Be Equal As Strings  ${response.json()['email']}        ${MSG_BLANK_EMAIL}
    Should Be Equal As Strings  ${response.json()['password']}     ${MSG_BLANK_PASSWORD}
