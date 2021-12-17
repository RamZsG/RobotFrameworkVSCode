*** Settings ***
Library    DatabaseLibrary
Suite Setup    Connect To Database    pymysql    ${dbName}    ${dbUser}    ${dbPassword}    ${dbHost}    ${dbPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${dbName}=    classicmodels
${dbUser}=    root
${dbPassword}=    admin
${dbHost}=    127.0.0.1
${dbPort}=    3306

*** Test Cases ***
Create Employee Table
    ${OUTPUT}   execute sql string    create table employee(id integer, firstname varchar(10), lastname varchar(15));
    log to console    ${OUTPUT}
    should be equal as strings  ${OUTPUT}   None

InsertDataintoEmployeetable
     ${OUTPUT}   execute sql string   insert into employee values(1, 'toto', 'titi');
    log to console    ${OUTPUT}
    should be equal as strings  ${OUTPUT}   None

#Not working yet, need to check why. And sql script not ready
InsertMultipleDataIntoEmployeeTable
     ${OUTPUT}   execute sql script    ./TestData/mydatabase_employee_insert_data.sql;
    log to console    ${OUTPUT}
    should be equal as strings  ${OUTPUT}   None

ValidateEmployeeRecord
    Check If Exists In Database    select * from employee where firstname = 'pollux';

ValidateEmployeeRecordNotPresent
    Check If Exists In Database    select * from employee where firstname = 'raoul';

VerifyNumberOfLinesEqualToZero
    Row Count Is 0    select * from mydatabase.employee where firstname="Rabah";

VerifyNumberOfLinesEqualToX
    Row Count Is Equal To X    select * from mydatabase.employee where firstname="Rabah"    2;

VerifyIfTableExists
    Table Must Exist    employee

VerifyNumberOfLinesSuperiorTo
    Row Count Is Greater Than X    select * from classicmodels.employee where firstname="toto";    2

VerifyNumberOfLinesLessThan
    Row Count Is Less Than X    select * from classicmodels.employee where firstname="toto";    3

UpdateRecordsInEmployeeTable
    ${OUTPUT}   execute sql string   Update classicmodels.employee set firstname="John" where id=1;
    log to console    ${OUTPUT}
    should be equal as strings  ${OUTPUT}   None

RetrieveRecordsFromEmployeeTable
    @{QueryResult}    Query    Select * from classicmodels.employee;
    Log To Console  many @{QueryResult}

DeleteTableRecords
    ${OUTPUT}   Execute sql string   Delete FROM employee;
    log to console    ${OUTPUT}
    should be equal as strings  ${OUTPUT}   None