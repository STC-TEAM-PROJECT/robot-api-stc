*** Settings ***
Resource        ../../base.robot
Documentation   Product test for API


*** Test Cases ***
Successfully validating product
    [Tags]    @regression   
    Search All Products
    Should Be Equal As Strings          ${response.status_code}                         200
    Set Test Variable                   ${quantidade}                                   ${response.json()["quantidade"]}
    Should Be Equal As Strings          ${response.json()["quantidade"]}                ${quantidade}

Successfully validating product by ID in the URL
    [Tags]    @regression   
    Search Products By Id In The URL    BeeJh5lz3k6kSIzA                              
    Should Be Equal As Strings          ${response.status_code}                         200
    Should Be Equal As Strings          ${response.json()["nome"]}                      Logitech MX Vertical

Successfully validating product by ID
    [Tags]    @regression   
    Search Products By Parameters       _id=K6leHdftCeOJj8BJ                   
    Should Be Equal As Strings          ${response.status_code}                          200
    Should Be Equal As Strings          ${response.json()["produtos"][0]["nome"]}        Samsung 60 polegadas
 
Successfully validating product by Name
    [Tags]    @regression  
    Search Products By Parameters       nome=Samsung 60 polegadas                  
    Should Be Equal As Strings          ${response.status_code}                          200
    Should Be Equal As Strings          ${response.json()["produtos"][0]["nome"]}        Samsung 60 polegadas
  
Successfully validating product by Description And Name
    [Tags]    @regression   
    Search Products By Parameters       nome=Samsung 60 polegadas   descricao=TV                  
    Should Be Equal As Strings          ${response.status_code}                          200
    Should Be Equal As Strings          ${response.json()["produtos"][0]["nome"]}        Samsung 60 polegadas
    
Unsuccessfully validating product by ID in the URL
    [Tags]    @regression   
    Search Products By Id In The URL    BeeJh5lz3k6kSIzB                              
    Should Be Equal As Strings          ${response.status_code}                         400
    Should Be Equal As Strings          ${response.json()["message"]}                   Produto não encontrado

Unsuccessfully validating product by Name
    [Tags]    @regression   
    Search Products By Parameters       nome=Non-existent products                  
    Should Be Equal As Strings          ${response.status_code}                          200
    Should Be Equal As Strings          ${response.json()["quantidade"]}                 0

Unsuccessfully validating product by Description
    [Tags]    @regression   
    Search Products By Parameters       descricao=Non-existent description                  
    Should Be Equal As Strings          ${response.status_code}                          200
    Should Be Equal As Strings          ${response.json()["quantidade"]}                 0

Successfully validating that the price must be a number
    [Tags]    @regression   
    Search Products By Parameters       preco=Non-existent price                  
    Should Be Equal As Strings          ${response.status_code}                          400
    Should Be Equal As Strings          ${response.json()["preco"]}                    preco deve ser um número


Successfully validating that the price must be an integer      
    [Tags]    @regression   
    Search Products By Parameters       preco=0.5                  
    Should Be Equal As Strings          ${response.status_code}                          400
    Should Be Equal As Strings          ${response.json()["preco"]}                    preco deve ser um inteiro

