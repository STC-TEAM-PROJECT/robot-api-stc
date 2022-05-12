*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary
Library    JsonValidator
Resource   ./tests/integartion-tests/keywords/usuarios/UsuarioKW.robot
Resource   ./tests/integartion-tests/keywords/produtos/ProdutoKW.robot

*** Variables ***
${URL_LOCAL}                            http://localhost:3000
${URL_DEV}                              https://serverest.dev

${KEYWORDS}                             ${CURDIR}/tests/integartion-tests/keywords
${SCHEMAS}                              ${CURDIR}/tests/schema-tests/schemas