# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Admin',
            email: 'admin@email.com',
            password: 'password',
            password_confirmation: 'password',
            admin: true
            )

Category.create!(heading: 'Pizza', body: "It's so good pizza in town", display: true)
Category.create!(heading: 'Pasta', body: "It's so good Pasta in town so far", display: true)
Category.create!(heading: 'Desserts', body: "It's so delicious desserts in town", display: true)

10.times do |i|
  pizza = Product.new(name: 'Pizza',
                      description: 'Lorem Ipsum bbq chicken',
                      price: 11.99,
                      catering: true,
                      category: Category.find(1))

  pasta = Product.new(name: 'Pasta',
                      description: 'Lorem Ipsum bbq chicken',
                      price: 8.99,
                      catering: true,
                      category: Category.find(2))

  dessert = Product.new(name: 'Ice Cream',
                        description: 'Lorem Ipsum bbq chicken',
                        price: 5.50,
                        catering: true,
                        category: Category.find(3))

  pizza.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pizza_image.jpg")
  pasta.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pasta_image.jpg")
  dessert.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_dessert_image.jpg")

  if i == 5
    pizza.featured = true
    pasta.featured = true
    dessert.featured = true
  end

  pizza.save
  pasta.save
  dessert.save
end