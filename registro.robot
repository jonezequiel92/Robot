*** Settings ***
Resource    recursos.robot

*** Variables ***
# Links
${BotonRegistrate}  //*[@id="navbarSupportedContent"]/ul[2]/li[2]/a
${CreaUnaCuenta1}  //*[@id="inSlider"]/div/div/div[1]/div/p[2]/a
${CreaUnaCuenta2}   //*[@id="page-top"]/section[3]/div[2]/div[1]/a


*** Keywords *** 


*** Test Cases ***
FN-97 Probar Componente de Registro1
    Abrir Navegador y Esperar Logo
    Click Element    ${BotonRegistrate}
    URL debe ser la de Registro
    Debe aparecer Formulario de Registro
    [Teardown]      Close Browser

FN95 Probar Componente de Registro2
    Abrir Navegador y Esperar Logo
    Click Element    ${CreaUnaCuenta1} 
    URL debe ser la de Registro
    Debe aparecer Formulario de Registro
    [Teardown]     Close Browser     

# FN95 Probar Componente de Registro3 -Falta Scrollear
#     Abrir Navegador y Esperar Logo
#     Wait Until Element Is Visible   ${CreaUnaCuenta2}
#     Click Button    ${CreaUnaCuenta2}
#     Direccion Asistente de Registro
#     Close Browser     


    # Run Keyword if      '${condition}'=='condition'     Click Element xxx