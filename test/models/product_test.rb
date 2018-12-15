require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create product" do
    product = Product.create id: 5, name: "new item", price: 12.49, active: true
    assert product.save
  end

end
