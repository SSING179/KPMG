def nested_value(obj, key)
    keys = key.split('')
    value = obj
    for k in keys
        if k in value
            value = value[k]
        else
            return None
    return value
    
obj1 = {a{b{cd}}}
key1 = 'abc'
print(nested_value(obj1, key1))
