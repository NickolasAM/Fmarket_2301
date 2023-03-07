class Vendor
  attr_reader :name,
              :inventory
              
  def initialize(name)
    @name = name
    @inventory = {}
  end
  
  def check_stock(item)
    item = 0
  end
  
  def stock(item, value)
    stock = item.merge(value)
    require'pry';binding.pry

  end
end
