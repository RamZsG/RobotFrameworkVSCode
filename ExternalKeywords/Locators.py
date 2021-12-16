import json
import jsonpath
# from jsonpath_ng import jsonpath, parse


def read_Locator_From_Json(locatorName):
    f=open('C:/Users/RamSchool/Documents/RobotFrameworkVSCode/JSonFile/Elements.json')
    response=json.loads(f.read())
    value=jsonpath.jsonpath(response, locatorName)
    # value= [match.value for match in parse (locatorName).find(response)]
    str_value=json.dumps(value[0])
    # print(value)
    return  str_value.strip('"')

# l=read_Locator_From_Json('Login.username_TextInput_id')
# print(l)