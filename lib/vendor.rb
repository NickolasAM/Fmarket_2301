class Vendor
  attr_reader :name,
              :inventory
  def initialize(name)
    @name = name
    @inventory = {}
    # @check_stock = 0
    # require'pry';binding.pry

  end
  
end
