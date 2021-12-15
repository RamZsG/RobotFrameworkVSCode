import json
import jsonpath 


def read_Locator_From_Json(locatorName):
    f=open('C:/Users/RamSchool/Documents/RobotFrameworkVSCode/JSonFile/Elements.json')
    response=json.loads(f.read())
    value=jsonpath.jsonpath(response, locatorName)
    return  value[0]

l=read_Locator_From_Json('login_btn_id')
print(l)