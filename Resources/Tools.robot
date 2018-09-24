*** Settings ***
Documentation  Tools Page
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Tools Main page
    click link  xpath=//*[@id="_ddMenu"]/li[5]/a

Interactive Read
    Click image  xpath=//*[@id="ctl00_PH__divMain"]/ul/li[1]/a/img

Job Status
    Click image  xpath=//*[@id="ctl00_PH__divMain"]/ul/li[2]/a/img

My Settings
    Click image  xpath=//*[@id="ctl00_PH__divMain"]/ul/li[3]/a/img

Operations
    Click image  xpath=//*[@id="ctl00_PH__divMain"]/ul/li[4]/a/img

