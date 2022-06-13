*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary
Library    JsonValidator
Library    yaml
Resource   ./tests/integration-tests/keywords/usuarios/UsuarioKW.robot
Resource   ./tests/integration-tests/keywords/produtos/ProdutoKW.robot
Resource   ./tests/integration-tests/keywords/carrinhos/CarrinhoKW.robot
Resource   ./tests/integration-tests/keywords/login/LoginKW.robot

*** Variables ***
${BASE_URL}                             ${URL}

${KEYWORDS}                             ${CURDIR}/tests/integration-tests/keywords
${SCHEMAS}                              ${CURDIR}/tests/schema-tests/schemas