-- Difference Of Squares
print("Difference of Squares")
print("Please enter the value of 'n'")
-- Get Value of n from user
n = io.read()
square = 0
sum = 0
for i = 0, n do
    square = square + i
    sum = (sum + i ^ 2)
end

square = square ^ 2

print("Square: ", square)
print("Sum: ", sum)

diff = square - sum
print("Difference: ", diff)