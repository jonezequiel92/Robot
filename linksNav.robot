*** Settings ***
Library         SeleniumLibrary
Library         String
Resource        recursos.robot

*** Test Cases ***
FN-95 Chequear Links del navbar
    Abrir Navegador y Esperar Logo
    Set Global Variable     @{linksNavBar}   ${menuFacturaElectronica}    ${menuIntegraciones}    ${menuPrecios}    ${menuAyuda}    ${menuBlog}     ${menuContacto}     ${menuIngresa}      ${menuRegistrate}    
    FOR     ${link}  IN     @{linksNavBar}
       Wait Until Element Is Visible   xpath=${link}
       Click Element   xpath=${link}
       Run Keyword If   '${link}'=='${menuAyuda}'   Go To   ${url}
       Run Keyword If   '${link}'=='${menuBlog}'   Go To   ${url}
       Run Keyword If   '${link}'=='${menuIngresa}'   Go To   ${url}
       Run Keyword If   '${link}'=='$${menuRegistrate}'   Go To   ${url}
       Wait Until Element Is Visible   ${logo}
       Click Element   ${logo}
    END
    [Teardown]  Close Browser