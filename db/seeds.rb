Product.delete_all
Product.create! id: 1, name: "T-Shirt", price: 12.49, active: true
Product.create! id: 2, name: "Hoodie", price: 16.49, active: true
Product.create! id: 3, name: "Blue jean", price: 10.29, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
