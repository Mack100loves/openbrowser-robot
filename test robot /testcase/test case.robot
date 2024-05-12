*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://futureskill.co
${BROWSER}    chrome    

*** Test Cases ***
Verify Future Skill Login
    Open Browser    ${URL}    ${BROWSER}
    ...    options=add_experimental_option("detach", True)  
    Sleep    1s
    Click Element     xpath=//*[@id="__next"]/div[2]/div/div[1]/div/div[3]/div[3]/button[2]
    Wait Until Element Contains    xpath=//*[@id="__next"]/div[2]/div/div[2]/h3    เข้าสู่บัญชี Futureskill ของคุณ   
    Sleep    1s            
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[1]/div/div[1]/input    koonfozenflower@gmail.com
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[1]/div/div[1]/input   pl
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[2]/div/div[1]/input   ljrl
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[3]/div/div[1]/input          0979914787
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[4]/div/div[1]/input           Mackzanaruk5
    Input Text    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[5]/div/div[1]/input           Mackzanaruk5
    Select Checkbox    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input
    Click Element    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button

