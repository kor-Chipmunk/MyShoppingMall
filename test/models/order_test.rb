require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "test create order item" do
    order = Order.new
    order_item = order.order_items.new quantity: 2, product_id: 1
    assert order.save
  end

  test "test change order item's status" do
    order = Order.new
    order_item = order.order_items.new quantity: 2, product_id: 1
    order.save

    assert order_item.order.order_status_id == 1 # default In-Progress

    order_item.order.order_status_id = 2 # Change to Placed
    order.save
    assert order_item.order.order_status_id == 2
  end
end
