# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p emma = User.create(first_name: "Emma", last_name: "Bergmann", gender: "female", age: 18, nationality: "german", password: "123456",
  email:"emma@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(2004, 02, 29))

p emma.id
emma_friend = Friend.create(user: emma, price: 30, hobbies: "my fish", zodiac_sign: "Pisces", pronouns: "she",
  about_me: "I am a great friend", availability: "monday, tuesday, friday")

yllka = User.create(first_name: "Yllka", last_name: "Shala", gender: "female", age: 24, nationality: "albanian", password: "123456",
  email:"yllka@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(1997, 05, 13))

yllka_friend = Friend.create(user: yllka, price: 30, hobbies: "my bird", zodiac_sign: "taurus", pronouns: "she",
  about_me: "I am a great friend", availability: "monday, tuesday, friday")

ross = User.create(first_name: "Ross", last_name: "Hunter", gender: "male", age: 40, nationality: "scottish", password: "123456",
  email:"ross@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(1982, 10, 8))

ross_friend = Friend.create(user: ross, price: 50, hobbies: "climbing", zodiac_sign: "libra", pronouns: "he",
  about_me: "I am a great friend", availability: "monday, friday, saturday")

max = User.create(first_name: "Max", last_name: "Mäder", gender: "male", age: 18, nationality: "german", password: "123456",
  email:"max@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(2003, 12, 17))

max_friend = Friend.create(user: max, price: 25, hobbies: "live fast die young", zodiac_sign: "saggitarius", pronouns: "he",
    about_me: "I am a great friend", availability: "monday, friday, saturday")

casimir = User.create(first_name: "Casimir", last_name: "knownow", gender: "male", age: 18, nationality: "german", password: "123456",
  email:"casimir@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(2004, 01, 28))

casimir_friend = Friend.create(user: casimir, price: 30, hobbies: "eating proteins", zodiac_sign: "aquarius", pronouns: "he",
  about_me: "I am a great friend", availability: "sunday, tuesday, friday, saturday")

christian = User.create(first_name: "Christian", last_name: "Krawczyk", gender: "male", age: 32, nationality: "german", password: "123456",
  email:"christian@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(1989, 04, 30))

christian_friend = Friend.create(user: christian, price: 50, hobbies: "bycicle racing", zodiac_sign: "taurus", pronouns: "he",
  about_me: "I am a great friend", availability: "monday, friday, saturday")

murad = User.create(first_name: "Murad", last_name: "Hasaov", gender: "male", age: 25, nationality: "azerbaijan", password: "123456",
  email:"murad@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(1982, 10, 8))

murad_friend = Friend.create(user: murad, price: 35, hobbies: "friends", zodiac_sign: "libra", pronouns: "he",
  about_me: "I am a great friend", availability: "monday, friday, saturday")

bil = User.create(first_name: "Bil", last_name: "Acheampong", gender: "male", age: 19, nationality: "italian", password: "123456",
  email:"bil@gmail.com", phone:"+49 1234567234", address: "Strassestr. 1", birth_date: Date.new(2003, 07, 9))

bil_friend = Friend.create(user: bil, price: 100000, hobbies: "reading, gaming", zodiac_sign: "cancer", pronouns: "calculator",
  about_me: "I am a great friend", availability: "monday, friday, saturday")
