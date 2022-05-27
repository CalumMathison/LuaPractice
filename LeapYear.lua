-- Leap Year Calculator
function CheckYear(year)
	check = false

	if year % 4 == 0 then
		check = true
	end

	if year % 100 == 0 then
		check = false
	end

	if year % 400 == 0 then
		check = true
	end

	return check
end

function FindNext(year)
	result = 0
	while year % 4 ~= 0 do
		year = year + 1
	end
	result = year
	return year
end

print("Leap Year Calculator")

running = true

while running do
	print("Press 'a' to check a year.")
	print("Press 'b' to find the next leap year.")
	print("Press 'x' to exit.")
	input = io.read()
	if input == "a" then
		print("Please enter the year to check: ")
		input = io.read()
		check = CheckYear(tonumber(input))
		if check then
			print("The year ", input, " is a leap year.")
		else
			print("The year " , input, " is not a leap year")
		end
	elseif input == "b" then
		print("Please enter the year to check")
		input = io.read()
		closest = FindNext(tonumber(input))
		if closest == tonumber(input) then
			print(input, " is a leap year.")
		else
			print("The closest leap year to ", input, " is ", closest)
		end
	elseif input == "x" then
		running = false
	else
		print("Please enter a valid option.")
	end
end