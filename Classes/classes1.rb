#p [].class.ancestors
#p [].class.superclass

#gadget.rb

class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class."
  end

end

# puts Gadget.superclass
# phone = Gadget.new
# laptop = Gadget.new
# microwave = Gadget.new
# p phone.methods.sort
# puts phone.is_a?(Gadget)
# puts phone.respond_to?(:class)
# puts phone.respond_to?(:length)

# shiny = Gadget.new
# flashy = Gadget.new
# p shiny.object_id
# p shiny.__id__
# glossy = flashy
# p glossy == flashy

# p phone
# p phone.instance_variables
# p laptop

# puts phone.username
# p phone.production_number

# phone.password = '123abc'
# p phone.password

g1 = Gadget.new('rubyfan', 'programming123')
p g1.username
p g1.production_number

g2 = Gadget.new('mrprogrammer', 'bestpassever')
g3 = Gadget.new('sportsfan100', 'topsecret')

