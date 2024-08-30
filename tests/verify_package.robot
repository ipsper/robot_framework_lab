*** Settings ***
Library    OperatingSystem
Library    Collections

*** Variables ***
${REQUIRED_VERSION}    3.0

*** Test Cases ***
Verify Requests Version
    [Documentation]    Verify that the requests package is installed and has at least version ${REQUIRED_VERSION}
    ${result}         Run Process    python    -c    import requests; print(requests.__version__)    stdout=YES
    ${version}    Set Variable    ${result.stdout.strip()}
    Log    Current requests version is: ${version}
    Should Be True    ${version} >= ${REQUIRED_VERSION}    Version of requests should be >= ${REQUIRED_VERSION}