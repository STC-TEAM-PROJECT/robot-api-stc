*** Settings ***
Resource   ../../../base.robot

*** Variables ***
${EXISTING_EMAIL}                       fulano@qa.com
${EXISTING_PASSWORD}                    teste
${NON_EXISTING_EMAIL}                   email@doesntexist.com
${NON_EXISTING_PASSWORD}                wrong_password_here
${INVALID_EMAIL}                        email_without_at

# MSGs
${MSG_LOGIN_SUCCESS}                    Login realizado com sucesso
${MSG_WRONG_EMAIL_OR_PASS}              Email e/ou senha inválidos

${MSG_INVALID_EMAIL}                    email deve ser um email válido

${MSG_BLANK_EMAIL}                      email não pode ficar em branco
${MSG_BLANK_PASSWORD}                   password não pode ficar em branco