*** Settings ***
Documentation  Interactive Read Scenarios
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***

InteractiveRead_Default

    Input text  xpath=//*[@id="ctl00_PH__tpSelections__txtMeterID"]  320816530
    click button  xpath=//*[@id="ctl00_PH__tpSelections__btnRead"]
    Sleep  20s
    WAIT UNTIL PAGE CONTAINS  Job Status

InteractiveRead_Ping

    click button  xpath=//*[@id="ctl00_PH__tpSelections__btnSelectEndpoint"]
    input text  xpath=//*[@id="ctl00__PH__endpointSearch__tpEndpoints__txtSerialNumber"]  320816530
    click button  xpath=//*[@id="ctl00__PH__endpointSearch__tpEndpoints__btnEndpointFind"]
    click link  xpath=//*[@id="ctl00__PH__meterGroupList__tpResults__tblReport"]/tbody/tr[3]/td[3]/a
    click link  xpath=//*[@id="ctl00__PH__tpDetails__linkPing"]
    wait until page contains element  xpath=//*[@id="toast-container"]/div/div[2]
    click link  xpath=//*[@id="ctl00__PH__tcMoreInformation"]/div[1]/nobr/ul/li[5]/a
    wait until page contains  Ping Node
