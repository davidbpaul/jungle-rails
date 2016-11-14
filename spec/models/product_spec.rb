require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:category) }

  end
  context "description" do
    let(:category_name) {"Map"}
    let(:name) {"Norco"}
    let(:price) {10}
    let(:quantity) {3}

    let(:cat) { Category.create(name: category_name) }
    let(:product) { Product.create(
    name: name,
    price: price,
    quantity: quantity
    ) }
      # @name = Product.create(name: 'Norco')
      # @price = Product.create(price: 10)
      # @quantity = Product.create(quantity: 3)
      # @category = Category.create(name: 'Map')

    it "should have a name" do
      expect(product.name).to eq("Norco")
    end
    it "should have a price" do
      expect(product.price).to eq(10)
    end
    it "should have a quantity" do
      expect(product.quantity).to eq(3)
    end
    it "should have a category" do

      expect(cat.name).to eq("Map")
    end
  end
end
