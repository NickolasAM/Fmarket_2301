require 'rspec'
require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  describe '#Iteration 1' do
    it 'exists and haas attributes'do
      vendor = Vendor.new("Rocky Mountain Fresh")

      expect(vendor).to be_an_instance_of(Vendor)
      expect(vendor.name).to eq("Rocky Mountain Fresh")
      expect(vendor.inventory).to eq({})
    end

    it 'vendor can check and add stock' do
      vendor = Vendor.new("Rocky Mountain Fresh")
      item1 = Item.new({name: 'Peach', price: "$0.75"})
      item2 = Item.new({name: 'Tomato', price: '$0.50'})

      expect(vendor.check_stock(item1)).to eq(0)

      vendor.stock(item1, 30)

      expect(vendor.stock(item1, 30)).to eq(30)
    end

  end

end



