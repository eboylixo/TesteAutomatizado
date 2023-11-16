*** Comments ***
Documentation Teste de cadastro e login de usuário


*** Settings ***
Resource            resources/base/Functional.robot
Resource    resources/base/LoginKeyWords.robot

Test Setup          Iniciar navegador
Test Teardown       finalizar teste

*** Variables ***
${EMAIL}     senai1@gmail.com
${SENHA}     123456


*** Test Cases ***
Deve acusar que usuário não existe
    Type Text    xpath=//*[@id="exampleInputEmail1"]    teste23455565@gmail.com
    Type Text    xpath=//*[@id="exampleInputPassword1"]    1258
    Click    xpath=//*[@type="submit"]
    Wait For Elements State    text=Usuário ou senha incorretos!

Deve logar usuário
    Logar
    Wait For Elements State    text=Id

