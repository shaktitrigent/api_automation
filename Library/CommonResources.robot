*** Settings ***
Documentation    Common variables and keywords file for Online Assessment project
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    String

Library    ../Resources/Utility_Functions.py

Resource    ../APIUtility/Reqres_API_Helper.robot
Resource    TestDataGenerator.robot


*** Variables ***
${base_url}     https://reqres.in/