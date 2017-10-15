array = [1,2,3,4,5]

sum = 0

array.each_with_index do |number, index|
  result = number * index
  sum += result
end

p sum

array2 = [-1, 2, 1, 2, 5, 7, 3]


def print_if(new_array)
  new_array.each_with_index do |number, index|
    puts number * index if index > number
  end
end

print_if(array2)