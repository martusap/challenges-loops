def threed(integers)
    count = 0

    integers.size.times do |i|
        if integers[i] == 3
            count += 1
        end
    end
    if count < 3 || count >3
        return false
    end
    (integers.size - 1).times do |i|
        if integers[i] == 3 && integers[i+1] == 3
            return false
        end
    end
    return true
end

# puts threed([2, 4, 3, 3, 3, 3])
# puts threed([2, 4, 3, 3])
# puts threed([2, 4, 3, 3, 3])
# puts threed([2, 3, 4, 3, 5, 3])


def same_first_last(int)
    i = 0
    t = -1
    if int.size > 1
        if int[i] == int[t]
            return true
        end
    end
    return false
end

# puts same_first_last([2, 2, 4, 5, 6])
# puts same_first_last([2, 2, 4, 5, 2])

def count_code(string)
    count = 0

    (string.size - 3).times do |i|
        if string[i, 2] == "co" && string[(i+3)] == "e"
            count += 1
        end
         
    end
    return count
end

# puts count_code("cccccogecode")

def shift_left(list)
    i = 0
    first = list[0]
    (list.size - 1).times do
        list[i] = list[i+1]
        i += 1
    end
    list[-1] = first
    return list

end

# puts shift_left([2,4,6,5])


def get_sandwich(sandwich)
   count = 0
   word = ""
   i = 0
   n = -5
   bottom = ""
   (sandwich.size - 4).times do |i|
        if sandwich[i, 5] == "bread"
            count += 1
        end
    end
    if count == 1
        return ""
    end
    while word != "bread"
        word = sandwich[i, 5]
        i += 1
    end
    top = sandwich[(i+4), sandwich.size]
    
    while bottom != "bread"
        bottom = top[n, 5]
        n += -1
    end
    inside = top[0, (top.size + n + 1)]
    return inside
end

# puts get_sandwich("aaabreadjamjamhambread")

def middle_way(list1, list2)
    if list1.size % 2 == 1
        mid = list1 [list1.size / 2]
    else
        mid = (list1[list1.size / 2] + list1[list1.size / 2 - 1]) / 2.0
    end

    if list2.size % 2 == 1
        mid2 = list2 [list2.size / 2]
    else
        mid2 = (list2[list2.size / 2] + list2[list2.size / 2 - 1]) / 2.0
    end
    return [mid] + [mid2]
end

# puts middle_way([2, 3, 2, 8], [7, 4, 2, 6]) 

def either_2_4(list) #-----------------------------------------------------
    i = 0
    n = 1
    (list.size - 1).times do
        if list[i] == 2
            if list[i] == list[n]
                ans = "yes"
            end
            else
                ans = "no"
        end
        if list[i] == 4
            if list[i] == list[n]
                ans2 = "yes"
            end
            else
                ans2 = "no"
        end
        i += 1
        n += 1
    end
    if ans = "yes" && ans2 = "yes"
        return "false"
    end
    return "false"
end

# puts either_2_4([3, 2, 2, 6])
# puts either_2_4([2, 2, 4, 4])
# puts either_2_4([3, 4, 2, 6])
# puts either_2_4([3, 4, 4, 6])