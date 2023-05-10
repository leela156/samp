%dw 2.0
output application/json
---
payload map (value, index) -> {
({
    "Name": value.Name,
    "Id's": flatten([((value filterObject ((value, index) -> index contains "id")) 
    pluck (value, key, index) -> {(key): (value)})
])
})
}


//here we are sorting all the id present under an root ids so we have used flatten which returns into a single array and filtered them using filterobject and with the the pluck function it returns an array of keys, values, or indices 
