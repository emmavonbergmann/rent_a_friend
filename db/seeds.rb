# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p linda = User.create(first_name: "Linda", last_name: "Müller", gender: "female", age: 20, nationality: "German", password: "123456",
  email:"linda@mail.com", phone:"+49 1234567234", address: "Müllerstraße 20, 80469 München", birth_date: Date.new(2004, 02, 29))

p linda.id
linda_friend = Friend.create(user: linda, price: 26, hobbies: "I love to read and walk my dog in the park.", zodiac_sign: "libra", pronouns: "she/her",
  about_me: "I am always down for a cup of tea and a good chat.", availability: "monday: 16.00-19.30, tuesday: 14.00-17.30, friday: all day")
