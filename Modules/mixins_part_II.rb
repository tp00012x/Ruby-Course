module Purchasable
  def purchase(item)
    "#{item} has been purchases!"
  end
end

class Bookstore
  include Purchasable
end

class Supermarket
  include Purchasable
end

class CornerMarket < Supermarket
end

barnes = Bookstore.new
p barnes.purchase('Atlas Shrugged')

shoprite = Supermarket.new
p shoprite.purchase('Ice Cream')

quickstop = CornerMarket.new
p quickstop.purchase('Slim Jim')