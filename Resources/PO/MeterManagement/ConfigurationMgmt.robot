*** Settings ***

*** Variables ***

*** Keywords ***

ConfigManagement Create Report

  click button  xpath=//*[@id="ctl00_PH__cfgCtl__tpSelections__btnRunReport"]
  Sleep  10s
  maximize browser window

Click on Edit

    Click image  xpath=//*[@id="ctl00_PH__cfgCtl__tpConfig__configTable__tblReport"]/tbody/tr[4]/td[10]/a[1]/img

Edit RegisterOperation

    Click link  xpath=//*[@id="ctl00_PH__cfgCtl_ctl00_ctl00__tabs"]/div[1]/nobr/ul/li[4]/a
    select from list  xpath=//*[@id="ctl00_PH__cfgCtl_ctl00_ctl00__tpRegisterOperation_ddlDemandIntervalLength"]  5 Minutes


Save Settings

    click button  xpath=//*[@id="ctl00_PH__cfgCtl_ctl00__btnSave"]
    Sleep  10s

Close Edit

    click link  xpath=//*[@id="ctl00_PH__cfgCtl_ctl00__btnClose"]

Click on download arrow

    click image  xpath=//*[@id="ctl00_PH__cfgCtl__tpConfig__configTable_linkDownload77001"]/img


