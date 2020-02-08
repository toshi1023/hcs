# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 初期データの記述
# Article.create(id: 1, name: "Yoshida Tsuyoshi", title: "Hello, Everyone", content: "Have a nice day!")
# Article.create(id: 2, name: "Mickel", title: "Hello, Tsuyoshi", content: "My name is Mickel")
# Article.create(id: 3, name: "Kaori", title: "Hi, Tsuyoshi! Mickel!", content: "Nice to meet you!")

Member.create(
  id: 1,
  name: "aaa",
  full_name: "aaabbb",
  email: "aaa@yahoo.co.jp",
  birthday: "2000-01-01",
  sex: 1,
  administrator: true,
  password: "aaa",
  password_confirmation: "aaa"
)

Member.create(
  id: 2,
  name: "bbb",
  full_name: "bbbccc",
  email: "bbb@yahoo.co.jp",
  birthday: "1996-01-01",
  sex: 2,
  administrator: false,
  password: "bbb",
  password_confirmation: "bbb"
)
