#HASHES I
#Fetch
menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
p menu.fetch(:taco)
p menu.fetch(:salad, 'Not Found')
p menu

#Adding a key value pair
menu[:salad] = 5.99
menu.store(:sushi, 24.99)
p menu

#.length, .empty?

#Each
menu.each { |food, price| p food, price}
# menu.each do |food, price|
# 	p food, price
# end

#each_key, each_value
salaries = {director: 100000, produce: 200000, ceo: 300000}
salaries.each_key { |position| p position}
salaries.each_value { |salary| p salary }

#Keys, Values
shopping_list = { bananas: 5, oranges: 10}
p shopping_list.keys
p shopping_list.values

#HASHES II
#Create hash with default value
fruit_prices = Hash.new('Not Found')
fruit_prices[:banana] = 1.05
p fruit_prices
p fruit_prices[:steak]
fruit_prices.default = 'Whooops! That doesnt exist here'
p fruit_prices[:mushrooms]

#Convert hash to Array
spice_girls = {scary: 'Melanie Brown',
               sporty: 'Melanie Chisholm',
               baby: 'Emma Bunton',
}
p spice_girls.to_a.flatten

power_rangers = [
  [:red, 'Jason'], [:black, 'Zack'],
  [:blue, 'Billy'], [:yellow, 'Trini'],
  [:pink, 'Kinberly']
]
p power_rangers.to_h

#Sort
p spice_girls.sort
p spice_girls.sort_by do |girl, name|
  girl
end

#Key? Value? Boolean methods

#Hash argument to method

#.delete

#.select and .reject
recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}
high = recipe.select { |ingredient, teaspoons| teaspoons >= 5 }
p high

#.merge
p spice_girls.merge(power_rangers.to_h)

#CHALLENGE
sentence = 'Once upon a time in a land far far away'
def word_count(string)
  new_hash = Hash.new(0)
  string.split(' ').each do |word|
      new_hash[word] += 1
  end
  new_hash
end

p word_count(sentence)

#test
