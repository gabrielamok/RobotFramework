*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.uol.com.br/
${NEWS_URL}       https://www1.folha.uol.com.br/colunas/painelsa/2024/12/pista-dada-em-reuniao-da-faria-lima-levou-itau-a-suposto-desvio.shtml
${BROWSER}        Chrome

*** Test Cases ***
Access UOL and Click on News
    [Documentation]    Teste para acessar o site da UOL e abrir uma notícia específica.
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Pista dada em reunião da Faria Lima levou Itaú a suposto desvio
    Scroll Element Into View    xpath=//h3[@id='m4ehko32']
    Click Element       xpath=//h3[@id='m4ehko32']
    Wait Until Location Is      ${NEWS_URL}
    Close Browser
