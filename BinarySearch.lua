-- Binary Search
print("Binary Search Algortihm")

run = true
list = {}

while(run) do
    print("Enter a to add item to list")
    print("Enter r to remove item from list")
    print("Enter s to search list")
    print("Enter x to exit")
    input = io.read()

    if input == "a" then
        input = io.read()
        table.insert(list, input)
        
    elseif input == "r" then

    elseif input == "s" then

    elseif input == "x" then
        run = false
    else 
        print("Please enter a valid option!")
    end
end

function sort(l)
    count = 1
    temp = 0
    for i = 1, #l do
        temp = l[i]
        j = i - 1
        while j >= 0 && l[j] > temp
            l[j+1] = l[j]
            j = j - 1
        end
        l[j+1] = temp
    end
    
end