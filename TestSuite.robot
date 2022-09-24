*** Settings ***
Documentation   Basic tests
Library         Browser   

*** Variables ***

*** Test Cases ***
Can see index page
  New Browser   firefox  headless=False
  New Context   viewport={'width': 1920, 'height': 1080}
#  New Page      https://atange.com
  New Page      http://localhost:3000
  Get Text      title  contains  Atange
  Sleep         2
  Click         \#navbar-register
  Sleep         2
  

