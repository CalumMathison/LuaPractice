-- Robot Name Generation

function GenerateRobot()
	name = ""
	for i = 1, 2 do
		name = name..string.char(math.random(65, 90))
	end
	for i = 1, 3 do
		name = name..tostring(math.random(1, 9))
	end

	print("Welcome to the world, ", name)
	return name
end

function CheckForDuplication(t)
	for i = 2, #t do
		if t[i] == t[i-1] then
			t[i] = GenerateRobot()
		end
	end
	return t
end

print("Robot Name Generation")

running = true
robots = {}

math.randomseed(os.time())

while(running) do
	print("Press 'a' to create a new robot.")
	print("Press 'p' to print all robot names.")
	print("Press 'x' to exit.")
	input = io.read()
	if input == "a" then
		table.insert(robots, GenerateRobot())
		robots = CheckForDuplication(robots)
	elseif input == "p" then
		for i = 1, #robots do
			print(robots[i])
		end
	elseif input == "x" then
		running = false
	else
		print("Please enter a valid option.")
	end
end