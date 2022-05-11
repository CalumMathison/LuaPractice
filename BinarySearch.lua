-- Binary Search
function sort(l)
    for i = 2, #l do
        temp = l[i]
        count = i - 1
        while count >= 1 and l[count] > temp do
            l[count + 1] = l[count]
            count = count - 1
        end
        l[count + 1] = temp
    end
    return l
end

function search(l, i)
    low = 1
    high = #l
    middle = nil
    found = false
    while low <= high and found == false do
        middle = (low + high) // 2
        if l[middle] == i then
            found = true
        elseif l[middle] < i then
            low = middle + 1
        else
            high = middle - 1
        end
    end
    if found == false then
        return -1
    else
        return middle
    end
end

function printList(l)
    for i = 1, #l do
        print(l[i])
    end
end

print("Binary Search Algortihm")

run = true
list = {}

while(run) do
    print("Enter a to add item to list")
    print("Enter r to remove item from list")
    print("Enter s to search list")
    print("Enter p to print list")
    print("Enter x to exit")
    input = io.read()

    if input == "a" then
        input = tonumber(io.read())
        table.insert(list, input)
    elseif input == "r" then
        print()
    elseif input == "s" then
        print("Enter the value to search for: ")
        input = tonumber(io.read())
        list = sort(list)
        index = search(list, input)
        if index == -1 then
            print("Item not found.")
        else
            print("Item ", input, " found at index ", index)
        end
    elseif input == "p" then
        print(#list)
        printList(list)
    elseif input == "x" then
        run = false
    else 
        print("Please enter a valid option!")
    end
end
