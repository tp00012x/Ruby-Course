#Yield
def pass_control
  puts 'This is inside the method!'
  yield
  puts 'Now Im back inside the method'
end

pass_control {puts 'Im very handsome'}

def who_am_i
  adjective = yield
  puts "I'm very #{adjective}"
end

who_am_i{'charming'}

def multiple_pass
  puts 'Inside the method'
  yield
  puts 'Back inside the method'
  yield
end

result = multiple_pass {'Blah blah blah'}
p result

#Procs 1

cubes = Proc.new { |number| number ** 3 }
a = [1,2,3,4,5]
b = [6,7,8,9,10]
c = [11,12,13,14,15]

a_cubes = a.map(&cubes)
p a_cubes

#.block_given?

#lambda
to_euros = lambda { |dollars| dollars * 0.95}
to_pesos = lambda { |dollars| dollars * 0.95}
to_rupees = lambda { |dollars| dollars * 0.95}

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)