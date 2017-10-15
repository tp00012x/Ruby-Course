numbers = [1,2,3,4,5]

squares1 = numbers.map { |number| number**2 }
squares2 = numbers.collect { |number| number**2 }

p squares1
p squares2

