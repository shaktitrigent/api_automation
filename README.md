This project uses pipenv to help manage python environments.

```
pip install pipenv

#To start running commands and enter the correct python shell
pipenv shell

#Install project dependancies in the virtual env
pipenv install
```

```
Commands to run the scripts:

To run all the test.
pipenv run robot -d OutputFiles TestCases/Reqres_API_Tests.robot

To run tests including a tag.
pipenv run robot -d OutputFiles -i Sanity TestCases/Reqres_API_Tests.robot

To run scripts excluding a tag.
pipenv run robot -d OutputFiles -e Smoke TestCases/Reqres_API_Tests.robot

To run all tests from same file in parallel
pipenv run pabot --testlevelsplit  -d OutputFiles TestCases/Reqres_API_Tests.robot

To rerun failed tests
pipenv run robot --rerunfailed output.xml TestCases/Reqres_API_Tests.robot
```