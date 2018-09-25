*** Settings ***
Documentation  This is my first script
Resource  Resources/Common.robot
Resource  Resources/Tools.robot
Resource  Resources/PO/Tools/InteractiveRead.robot
Resource  Resources/MeterManagement.robot
Resource  Resources/PO/MeterManagement/ConfigurationMgmt.robot
Resource  Resources/PO/Tools/Operations/ReadFirmwareVersions.robot


*** Variables ***

*** Test Cases ***
Login to CE
    [Documentation]   Login to CE
    [Tags]  login
    Common.Login
    Common.Logout

Interactive Read
    [Documentation]  Testing Interactive Read
    [Tags]  Interactive
    Common.Login
    Tools.Tools Main page
    Tools.Interactive Read
    InteractiveRead.InteractiveRead_Default
    Common.Logout


Configuration download
    [Documentation]  Testing config download
    [Tags]  configdownload
    Common.Login
    MeterManagement.Meter Management Main Page
    MeterManagement.Configuration Management
    ConfigurationMgmt.ConfigManagement Create Report
    ConfigurationMgmt.Click on Edit
    ConfigurationMgmt.Edit RegisterOperation
    ConfigurationMgmt.Save Settings
    ConfigurationMgmt.Close Edit
    ConfigurationMgmt.ConfigManagement Create Report

Read Firmware Version
    [Documentation]  Testing Read firmware version
    [Tags]  ReadFirmwareVersion
    Common.Login
    Tools.Tools Main Page
    Tools.Operations
    ReadFirmwareVersions.Navigate to Read Firmware Version
    ReadFirmwareVersions.Add meter in popup



