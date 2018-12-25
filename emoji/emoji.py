import json 


# https://stackoverflow.com/questions/50008296/facebook-json-badly-encoded
def parse_obj(obj):
    for key in obj:
        if type(obj[key]) is str:
            obj[key] = obj[key].encode('latin_1').decode('utf-8')
        elif type(obj[key]) is list:
            obj[key] = list(map(lambda x: x if type(x) != str else x.encode('latin_1').decode('utf-8'), obj[key]))
        pass
    return obj

with open(json_file) as f:
    data = json.load(f, object_hook=parse_obj)
    pass

