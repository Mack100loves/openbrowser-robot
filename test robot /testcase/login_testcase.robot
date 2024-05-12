*** Settings ***
Library    SeleniumLibrary
Resource    ../keyword /login_keyword.robot    


*** Test Cases ***
All login chrome
    login_keyword.Open Login Page    ${URL}    ${BROWSER}
    login_keyword.Click Register
    login_keyword.Wait for Login Form
    login_keyword.Fill Login Form    ${email}    ${password}
    login_keyword.Submit Login Form

    