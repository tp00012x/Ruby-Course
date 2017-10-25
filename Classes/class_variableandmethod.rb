class Bicycle
  @@maker = 'BikeTech'
  @@count = 0

  def self.description
    'Hi There, Im the blueprint for Bicycles! Use me to create a bicycle object!'
  end

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end

end

puts Bicycle.description
p Bicycle.count

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count