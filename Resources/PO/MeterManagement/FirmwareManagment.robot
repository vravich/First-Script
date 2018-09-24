*** Settings ***

*** Variables ***

*** Keywords ***

Firmware download

    Click link  xpath=//*[@id="_ddMenu"]/li[3]/a
    wait until page contains  Copyright © Itron 2006 - 2016
    click image  xpath=//*[@id="ctl00_PH__divMain"]/ul/li[3]/a/img
    wait until page contains  Firmware Management
    select from list  xpath=//*[@id="ctl00_PH__tpSelections__ddlGroupChoice"]  4G ITRJ (C)
    sleep  5s
    select from list  xpath=//*[@id="_ddlFirmwareChoice_ddl"]  Sierra Verizon LTE
    sleep  5s
    select from list  xpath=//*[@id="_ddlFirmwareVersionChoice_ddl"]  3.7.0 HW Version 0.000 - 96.000 - (ITRJ)
    sleep  5s
    click button  xpath=//*[@id="ctl00_PH__tpSelections__btnBeginProcess"]
    handle alert  action=ACCEPT
    sleep  9s