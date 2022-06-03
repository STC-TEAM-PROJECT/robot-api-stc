*** Settings ***
Resource        ../../base.robot
Documentation   Product test for API


*** Test Cases ***
Successfully login
    [Tags]    @regression
    Login                               fulano@qa.com   teste
    Should Be Equal As Strings          ${response.status_code}                    200
    Should Be Equal As Strings          ${response.json()["message"]}              Login realizado com sucesso
    Set Global Variable                 ${authorization}                           ${response.json()["authorization"]}
    Should Be Equal As Strings          ${response.json()["authorization"]}        ${authorization}

Unsuccessfully login
    [Tags]    @regression   @test
    Login                               invalido@qa.com   teste
    Should Be Equal As Strings          ${response.status_code}                    401
    Should Be Equal As Strings          ${response.json()["message"]}              Email e/ou senha inválidos