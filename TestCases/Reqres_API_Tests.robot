*** Settings ***
Resource    ../Library/CommonResources.robot
Suite Setup    Initial Setup

*** Variables ***
${student_id}

*** Test Cases ***
List all users details
    [Tags]     Sanity    Regression    Smoke
    Get all users details

Test to create new user details
    [Tags]     Sanity    Regression
    Create user details

Test to update existing user details
    [Tags]     Regression
    Create user details
    Update user Details

Test to delete user details
    [Tags]     Regression
    Create user details
    Delete user details

*** Keywords ***
Initial Setup
    Start Session
