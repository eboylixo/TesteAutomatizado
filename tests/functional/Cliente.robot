*** Comments ***
Documentation Teste relacionados a página de Clientes

*** Settings ***
Resource            resources/base/Functional.robot
Resource    resources/base/LoginKeyWords.robot

Test Setup    Run Keywords    Iniciar navegador     Logar

# É executado depois de cada teste
Test Teardown       finalizar teste



*** Test Cases ***
Deve cadastrar cliente
    Type Text    xpath=//*[@id="nome"]            robot teste
    Type Text    xpath=//*[@id="email"]           robot@gmail.com
    Type Text    xpath=//*[@id="endereco"]        Rua dos Patos
    Type Text    xpath=//*[@id="dt-nascimento"]   01012000
    Type Text    xpath=//*[@id="cpf"]             123.456.789-00
    Click    xpath=//*[@type='submit']

Deve excluir cliente
    Click    xpath=//*[] 