*** Settings ***

*** Variables ***

*** Keywords ***

Navigate to Read Firmware Version

    click image  xpath=//*[@id="ctl00_PH__divMain"]/ul/li[5]/a/img
    click button  xpath=//*[@id="ctl00_PH__tpSelections__meterGroupList__tpResults__btnAdd"]

Add meter in popup

    select window  title:Find Endpoints
    maximize browser window
    input text  xpath=//*[@id="ctl00__PH__endpointSearch__tpEndpoints__txtSerialNumber"]  320816530
    click button  xpath=//*[@id="ctl00__PH__endpointSearch__tpEndpoints__btnEndpointFind"]
    sleep  10s
    click image  xpath=//*[@id="ctl00__PH__meterGroupList__tpResults_ctl04__scriptLink_1"]/img
    click button  xpath=//*[@id="ctl00__PH__Ok"]

