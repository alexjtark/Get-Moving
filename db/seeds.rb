user = User.create(username: "bill", email: "1@2.com", password: "123")

box = Box.create(name: "living room", user_id: 1)

item = Item.create(name: "moms dishes", description: "shrink wrapped", quantity: 10, box_id: 1)
