import json
import jsonpath 


def read_Locator_From_Json(locator_Name):
    f=open('C:/Users/RamSchool/Documents/RobotFrameworkVSCode/JSonFile/Elements.json')
    response=json.loads(f.read())
    value=jsonpath.jsonpath(response, locator_Name)
    return  value[0]

#l=read_Locator_From_Json('login_btn_id')
#print(l)