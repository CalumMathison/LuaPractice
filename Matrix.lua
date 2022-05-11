-- Matrix Representer

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
    	table.insert(result, match);
    end
    return result;
end

print("Matrix Representation")
--print("Please enter width of Matrix: ")
--width = tonumber(io.read())
--print("Please enter height of Matrix: ")
--height = tonumber(io.read())
print("Please enter matrix string: ")
input = io.read()

test = {}
test = Split(input, "\\n")

matrix = {}
for i = 1, 3 do
	matrix[i] = {}
	for j = 1, 3 do
		matrix[i][j] = Split(test[i], " ")[j]
	end
end

print("Rows:")
print(matrix[1][1], " ", matrix[1][2], " ", matrix[1][3])
print(matrix[2][1], " ", matrix[2][2], " ", matrix[2][3])
print(matrix[3][1], " ", matrix[3][2], " ", matrix[3][3])

print("Columns: ")
print(matrix[1][1], " ", matrix[2][1], " ", matrix[3][1])
print(matrix[1][2], " ", matrix[2][2], " ", matrix[3][2])
print(matrix[1][3], " ", matrix[2][3], " ", matrix[3][3])
