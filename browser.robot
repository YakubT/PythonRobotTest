*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary

*** Keywords ***
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  chromedriver

*** Variables ***
${browser}    chrome
${url}    https://www.google.com/

*** Test Cases ***
Run Browser
    Setup chromedriver
    open browser          ${url}  ${browser}
    close browser