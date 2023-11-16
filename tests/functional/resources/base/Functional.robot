*** Settings ***
Documentation    Configurações padrão
Library    Browser

*** Variables ***
${NAVEGADOR}        chromium
${LINK}             http://localhost:5173/#/login
${LARGURA_JANELA}   1200
${ALTURA_JANELA}    800

*** Keywords ***
Iniciar navegador
    New Browser     chromium    headless=false    slowMo=00:00:00.7
    New Context
        New Page        ${LINK}
    Set Viewport Size    ${LARGURA_JANELA}    ${ALTURA_JANELA}

finalizar teste
    Take Screenshot    fullPage=true