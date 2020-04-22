# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  email:'admin@mail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true
  )

Category.create!(heading: 'Pizza', body: "It's so good!!!!", display: true )
Category.create!(heading: 'Pasta', body: "Love lasagna with tomato sauce", display: true )
Category.create!(heading: 'Desserts', body: "Fabulous ans so tasty", display: true )

10.times do |i|
  pizza = Product.new(
      name: 'Pizza',
      description: "Lorem ipsum bbq chicken with feta cheese and sausage",
      price: 11.99,
      catering: true,
      category: Category.find(1)
    )
  pasta = Product.new(
      name: 'Pasta',
      description: "Lorem ipsum bbq chicken with feta cheese and sausage",
      price: 7.95,
      catering: true,
      category: Category.find(2)
    )
    dessert = Product.new(
      name: 'Icecream',
      description: "Lorem ipsum bbq chicken with feta cheese and sausage",
      price: 3.99,
      catering: true,
      category: Category.find(3)
    )
    pizza.image.attach(io: open('https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=714&q=80'), filename: "#{i}_pizza_image.jpg")
    pasta.image.attach(io: open('https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=985&q=80'), filename: "#{i}_pasta_image.jpg")
    dessert.image.attach(io: open('https://images.unsplash.com/photo-1551024506-0bccd828d307?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80'), filename: "#{i}_dessert_image.jpg")
    if i == 5
      pizza.featured = true
      pasta.featured = true
      dessert.featured = true
    end

    pizza.save
    pasta.save
    dessert.save

end
