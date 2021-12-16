*** Settings ***
Library    DatabaseLibrary
Suite Setup    Connect To Database    pymysql    ${dbName}    ${dbUser}    ${dbPassword}    ${dbHost}    ${dbPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${dbName}=
${dbUser}=    root
${dbPassword}=
${dbHost}=    127.0.0.1
${dbPort}=    3306