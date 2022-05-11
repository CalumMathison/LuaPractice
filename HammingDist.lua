-- Hamming Distance Calculator
function Split(s, delimiter)
    result = {};
    for i = 0, #s do
        result[i] = s:sub(i, i)
    end
    return result;
end

print("Hamming Distance Calculator")
print("Enter the first strand: ")
strand1 = Split(io.read(), "")
print("Enter the second strand: ")
strand2 = Split(io.read(), "")
count = 0
for i = 0, #strand1 do
    print(strand1[i], ", ", strand2[i])
    if strand1[i] ~= strand2[i] then
        count = count + 1
    end
end
print("Hamming Distance = ", count)
