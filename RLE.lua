-- Run Length Encoding

function Encode(s)
	result = ""
	count = 0
	for i = 1, #s do
		j = i - 1
		if s:sub(i, i) == s:sub(j, j) then
			count = count + 1
		elseif s:sub(i, i) ~= s:sub(j, j) and count == 0 then
			result = result..s:sub(j, j)
		else
			count = count + 1
			result = result..tostring(count)..s:sub(j, j)
			count = 0
		end

		if i == #s and s:sub(i, i) == s:sub(j, j) then
			count = count + 1
			result = result..tostring(count)..s:sub(j, j)
		end
	end
	return result
end

function Decode(s)
	return s:gsub('(%d+)(.)', function(n, c) return c:rep(tonumber(n)) end)
end

print("Run Length Encoder")
print("This script encodes and decodes strings using RLE.")
print("RLE is a simple form of data compression where consecutive elements are replaced with a value & count.")

running = true

while(running) do
	input = ""
	result = ""
	print("Press e to encode.")
	print("Press d to decode.")
	print("Press x to exit.")
	input = io.read()
	if input == "e" then
		print("Please enter the string you would like to encode.")
		input = io.read()
		result = Encode(input)
		print(result)
		print(input, " encoded to ", result)
	elseif input == "d" then
		print("Please enter the string you would like to decode.")
		input = io.read()
		result = Decode(input)
		print(input, " decoded to ", result)
	elseif input == "x" then
		running = false
	else
		print("Please enter a valid option.")
	end
end
