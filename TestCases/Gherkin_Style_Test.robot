*** Settings ***
Resource    ../Library/CommonResources.robot
Suite Setup    Initial Setup

*** Variables ***
${student_id}

*** Test Cases ***
Test is to veirify the create update and delete operation of a user.
    [Tags]     Regression
    Given Create user details
    When Update user Details
    Then Get all users details
    Then Delete user details
    Then Get all users details

*** Keywords ***
Initial Setup
    Start Session
