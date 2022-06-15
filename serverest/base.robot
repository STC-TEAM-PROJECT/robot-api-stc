*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary     locale=pt_BR
Library    JsonValidator
Library    yaml
Resource   ${KEYWORDS}/carrinhos/keywords/CarrinhoKW.robot
Resource   ${KEYWORDS}/login/keywords/LoginKW.robot
Resource   ${KEYWORDS}/produtos/keywords/ProdutoKW.robot
Resource   ${KEYWORDS}/usuarios/keywords/UsuarioKW.robot
Resource   ./serverest/tests/commons

*** Variables ***
${BASE_URL}                             ${URL}

${KEYWORDS}                             ${CURDIR}/tests/integration-tests
${SCHEMAS}                              ${CURDIR}/tests/schema-tests/schemas