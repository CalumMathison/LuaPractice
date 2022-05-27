-- Resistor Colors
function PrintTable()
	for i = 1, #colors do
		print(colors[i], " denotes the number ", tostring(values[colors[i]]))
	end
end

function Split(input, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(input, "([^"..sep.."]+)") do
		table.insert(t, str)
	end
	return t
end

function ConvertSequence(s)
	list = Split(s, "-")
	result = ""
	result = result..tostring(values[list[1]])
	result = result..tostring(values[list[2]])
	for i = 1, values[list[3]] do
		result = result.."0"
	end

	return result
end


print("Resistor Color Trio")
print("This application takes an input of the color bands found on resistors and converts it to a 'ohm' number.")

running = true

-- Colors
colors = {}
colors[1] = "black"
colors[2] = "brown"
colors[3] = "red"
colors[4] = "orange"
colors[5] = "yellow"
colors[6] = "green"
colors[7] = "blue"
colors[8] = "violet"
colors[9] = "grey"
colors[10] = "white"

values = {}
values["black"] = 0
values["brown"] = 1
values["red"] = 2
values["orange"] = 3
values["yellow"] = 4
values["green"] = 5
values["blue"] = 6
values["violet"] = 7
values["grey"] = 8
values["white"] = 9

while running do
	print("Press 'a' to check a sequence.")
	print("Press 'p' to pring the colors.")
	print("Press 'x' to exit.")
	input = io.read()
	if input == "a" then
		print("Please enter the sequence you wish to check:")
		print("Ensure the sequence is spelt correctly. Seperate each word using '-'.")
		input = io.read()
		result = ConvertSequence(input)
		print(input, " equals ", result, " Ohms")
	elseif input == "p" then
		PrintTable()
	elseif input == "x" then
		running = false
	else
		print("Please enter a valid option.")
	end
end