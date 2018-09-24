*** Settings ***
Documentation  Login logout page
Library  SeleniumLibrary


*** Variables ***

*** Keywords ***
Login to CE
    open browser  http://ral-qa-xceism01.ipv6lab.com/OpenWay/  chrome
    wait until page contains   Please enter your user ID and password to log in
    input text  xpath=//*[@id="_loginForm_edtUserID"]  admin
    input text  xpath=//*[@id="_loginForm_edtPassword"]  Aa123456
    click button   xpath=//*[@id="_loginForm_btnLogon"]
    sleep  10s
    wait until page contains  Copyright © Itron 2006 - 2016
Logout from CE
     click link  xpath=//*[@id="ctl00__lblUserId"]/table/tbody/tr[1]/td[3]/a
     Sleep  3s
     close browser