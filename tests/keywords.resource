*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           tools/customlibrary.py


*** Keywords ***
Connect to Server
    Connect    fe80::aede:48ff:fe00:1122

…    [Documentation]    'Login Admin' is a Keyword.
    ...                It calls 'Login User' from 'CustomLibrary.py'
    Login User    admin    @RBTFRMWRK@
    Verify Valid Login    Administrator
