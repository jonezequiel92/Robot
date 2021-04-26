*** Settings ***
Documentation   Prueba Login - Documentado en Qase
Library         SeleniumLibrary
Library         String

*** Variables *** 
# Navegador
${navegador}    firefox

# URLs
${url}          https://www.facturante.com/Site/index.html
${urlRegistro}  https://www.facturante.com/AsistenteRegistro
${urlLogin}     https://www.facturante.com/Usuarios/LogOn

# Header 
${logo}                     //*[@id="page-top"]/header/nav/div/div[1]/a/img
${menuFacturaElectronica}   //*[@id="navbarSupportedContent"]/ul[1]/li[1]/a
${menuIntegraciones}        //*[@id="navbarSupportedContent"]/ul[1]/li[2]/a
${menuPrecios}              //*[@id="navbarSupportedContent"]/ul[1]/li[3]/a
${menuAyuda}                //*[@id="navbarSupportedContent"]/ul[1]/li[4]/a
${menuBlog}                 //*[@id="navbarSupportedContent"]/ul[1]/li[5]/a
${menuContacto}             //*[@id="navbarSupportedContent"]/ul[1]/li[6]/a
${menuIngresa}              //*[@id="navbarSupportedContent"]/ul[2]/li[1]/a
${menuRegistrate}           //*[@id="navbarSupportedContent"]/ul[2]/li[1]/a


# Componentes
${formularioRegistro}       //*[@id="form-paso1"]


*** Keywords *** 
Abrir Navegador y Esperar Logo
    Open Browser     ${url}      ${navegador}
    Wait Until Element Is Visible  ${logo}     
    
URL debe ser la de Registro
    Location Should Be      ${urlRegistro}

Debe aparecer Formulario de Registro
    Wait Until Element Is Visible   ${formularioRegistro} 

URL debe ser la de Login
    Location Should Be      ${urlLogin}

Hacer Click en Logo y Esperar a que Cargue
    Click Element   ${logo}
    Wait Until Element Is Visible   ${logo}