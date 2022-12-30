io.write("What would you like to format?\n")
local message = io.read()
local colors = {
    "FBF8CC",
    "FDE4CF",
    "FFCFD2",
    "F1C0E8",
    "CFBAF0",
    "A3C4F3",
    "90DBF4",
    "8EECF5",
    "98F5E1",
    "B9FBC0",
}
local formatted = {}
for i = 1, #message do
    local color = (i % #colors) + 1
    local character = ("[color=#%s]%s"):format(colors[color], message:sub(i, i))
    table.insert(formatted, character)
end
print(table.concat(formatted))