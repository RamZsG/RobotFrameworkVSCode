import json
import jsonpath
# from jsonpath_ng import jsonpath, parse


def read_Locator_From_Json(locatorName):
    f=open('C:/Users/RamSchool/Documents/RobotFrameworkVSCode/JSonFile/Elements.json')
    response=json.loads(f.read())
    value=jsonpath.jsonpath(response, locatorName)
    str_value=json.dumps(value[0])

    # value= [match.value for match in parse (locatorName).find(response)]
    # print(value)
    # str_value=json.dumps(value)
    return  str_value.strip('"')

# l=read_Locator_From_Json('Login.username_TextInput_id')
# print(l)