name = %w[Jack Jill John James]

puts name
p name

#

numbers = [1,2,3,4,5]

squares1 = numbers.map { |number| number**2 }
squares2 = numbers.collect { |number| number**2 }

p squares1
p squares2

#Challenge

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