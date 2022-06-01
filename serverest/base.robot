*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary
Library    JsonValidator
Resource   ./tests/integration-tests/keywords/usuarios/UsuarioKW.robot
Resource   ./tests/integration-tests/keywords/produtos/ProdutoKW.robot
Resource   ./tests/integration-tests/keywords/carrinhos/CarrinhoKW.robot
Resource   ./tests/integration-tests/keywords/login/LoginKW.robot

*** Variables ***
${URL_LOCAL}                            http://localhost:3000
${URL_DEV}                              https://serverest.dev

${KEYWORDS}                             ${CURDIR}/tests/integration-tests/keywords
${SCHEMAS}                              ${CURDIR}/tests/schema-tests/schemas