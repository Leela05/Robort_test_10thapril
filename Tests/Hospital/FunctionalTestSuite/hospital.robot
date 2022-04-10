*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${username}   admin
${password}   12345

*** Test Cases ***
Hospital login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000  chrome
    maximize browser window
    sleep  2s
    input text  name:username  ${username}
    sleep  1s
    input password  name:password  ${password}
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Registration tested
    [Documentation]  Registration
    [Tags]  admin
    input text  name:name  Amu
    sleep  1s
    input text  name:mobnumber  6382941641
    sleep  1s
    input text  name:age  22
    sleep  1s
    input text  name:address  Bangalore
    sleep  1s
    input text  name:dob  10/04/2022
    sleep  1s
    input text  name:place  Bangalore
    sleep  1s
    input text  name:pincode  123456
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

Search Patient test
    [Documentation]  Search Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  3s
    input text  name:mobnumber  6382941641
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  5s

Viewall Patient test
    [Documentation]  Viewall Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep  5s

Update Patient test
    [Documentation]  Update Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep   1s
    input text  name:mobnumber  6382941641
    sleep  1s
    input text  name:name  amu
    sleep   1s
    input text  name:age  21
    sleep  1s
    input text  name:address  Bangalore
    sleep   1s
    input text  name:dob  04/12/2001
    sleep  1s
    input text  name:place  abcd
    sleep  1s
    input text  name:pincode  1234456
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

Delete Patient test
    [Documentation]  Delete Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    input text  name:mobnumber  6382941641
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser

*** Keywords ***
