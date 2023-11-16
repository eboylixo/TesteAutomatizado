
*** Settings ***
Documentation     Keywords relacionados ao login
Resource           Functional.robot

*** Variables ***
${EMAIL}     senai1@gmail.com
${SENHA}     123456

*** Keywords ***
Logar
    Click    text=Logout
    Type Text    xpath=//*[@id="exampleInputEmail1"]    ${EMAIL}
    Type Text    xpath=//*[@id="exampleInputPassword1"]    ${SENHA}
    Click    text=Login
