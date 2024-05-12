*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://futureskill.co
${BROWSER}    chrome    
${email}    koonfozenflower@gmail.com
${password}    Mackzanaruk5

*** Keywords ***
Open Login Page
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
     ...    options=add_experimental_option("detach", True)  

Click Register
    Wait Until Element Contains    xpath=//*[@id="__next"]/div[2]/div/div[1]/div/div[3]/div[3]/button[2]    สมัครสมาชิก
    Click Element   xpath=//*[@id="__next"]/div[2]/div/div[1]/div/div[3]/div[3]/button[2]
Wait for Login Form
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/div[2]/div/div[2]/div

Fill Login Form
    [Arguments]    ${email}    ${password}
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[1]/div/div[1]/input    ${email}  
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[1]/div/div[1]/input   pl
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[2]/div/div[1]/input   ljrl
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[3]/div/div[1]/input          0979914787
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[4]/div/div[1]/input           ${password}
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[5]/div/div[1]/input           ${password}
    Select Checkbox    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input

    # ... (remaining form input steps using appropriate locators)
Select Remember Me Checkbox
    Select Checkbox    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input   
Submit Login Form
    Click Element   xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button

 

