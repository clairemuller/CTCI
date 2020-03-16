# brute force
# loop through each letter,
# checking it against the following
def is_unique_BF(str)
    for i in 0..str.length
        for j in i+1..str.length
            if str[i] == str[j]
                return false
            end
        end
    end
    return true
end

# create an empty hash
# loop through string, checking the hash for the letter
# if letter exists, return false
# otherwise add letter to hash and keep going
# the letter's value in the hash doesn't matter
# many ways to loop through string:
# for i in 0..str.length -> check str[i]
# str.each_char do |char| -> check char
def is_unique_hash(str)
    hh = {}
    # can't do .each on a string, instead use each_char:
    str.each_char do |char|
        if hh[char]
            return false
        else
            hh[char] = 1
        end
    end
    return true
end

str1 = "cat"
puts is_unique_hash(str1)
str2 = "bbb"
puts is_unique_hash(str2)