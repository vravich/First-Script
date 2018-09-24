*** Settings ***
Documentation  This is a common file
Resource  Resources/PO/Login.robot


*** Variables ***

*** Keywords ***
Login
    Login.Login to CE
Logout
    Login.Logout from CE

