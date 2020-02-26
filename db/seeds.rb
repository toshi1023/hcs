# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Member.create(
  id: 1,
  name: "aaa",
  full_name: "aaabbb",
  email: "aaa@xxx.co.jp",
  birthday: "1992-11-21",
  sex: 1,
  administrator: false,
  password: "aaa",
  password_confirmation: "aaa"
)

Member.create(
  id: 2,
  name: "bbb",
  full_name: "bbbccc",
  email: "bbb@xxx.co.jp",
  birthday: "1996-01-01",
  sex: 2,
  administrator: false,
  password: "bbb",
  password_confirmation: "bbb"
)

Member.create(
  id: 3,
  name: "ccc",
  full_name: "cccddd",
  email: "ccc@xxx.co.jp",
  birthday: "1994-07-09",
  sex: 1,
  administrator: false,
  password: "ccc",
  password_confirmation: "ccc"
)

Member.create(
  id: 4,
  name: "ddd",
  full_name: "dddeee",
  email: "ddd@xxx.co.jp",
  birthday: "1998-04-01",
  sex: 2,
  administrator: false,
  password: "ddd",
  password_confirmation: "ddd"
)

Member.create(
  id: 5,
  name: "eee",
  full_name: "eeefff",
  email: "eee@xxx.co.jp",
  birthday: "1999-11-14",
  sex: 1,
  administrator: false,
  password: "eee",
  password_confirmation: "eee"
)

Member.create(
  id: 6,
  name: "fff",
  full_name: "fffggg",
  email: "fff@xxx.co.jp",
  birthday: "1991-12-23",
  sex: 1,
  administrator: false,
  password: "fff",
  password_confirmation: "fff"
)

Member.create(
  id: 7,
  name: "ggg",
  full_name: "ggghhh",
  email: "ggg@xxx.co.jp",
  birthday: "1995-06-30",
  sex: 1,
  administrator: false,
  password: "ggg",
  password_confirmation: "ggg"
)

Member.create(
  id: 8,
  name: "hhh",
  full_name: "hhhiii",
  email: "hhh@xxx.co.jp",
  birthday: "1993-08-22",
  sex: 2,
  administrator: false,
  password: "hhh",
  password_confirmation: "hhh"
)

Member.create(
  id: 9,
  name: "iii",
  full_name: "iiijjj",
  email: "iii@xxx.co.jp",
  birthday: "2000-05-08",
  sex: 2,
  administrator: false,
  password: "iii",
  password_confirmation: "iii"
)

Member.create(
  id: 10,
  name: "jjj",
  full_name: "jjjkkk",
  email: "jjj@xxx.co.jp",
  birthday: "2001-01-23",
  sex: 1,
  administrator: false,
  password: "jjj",
  password_confirmation: "jjj"
)

Member.create(
  id: 11,
  name: "kkk",
  full_name: "kkkmmm",
  email: "kkk@xxx.co.jp",
  birthday: "1995-03-04",
  sex: 1,
  administrator: false,
  password: "kkk",
  password_confirmation: "kkk"
)

Article.create(
  id: 1,
  title: "Hello!!",
  content: "Have a nice day!!",
  member_id: 1,
  women: false
)

Article.create(
  id: 2,
  title: "こんにちは！",
  content: "これから仲良くしましょう！",
  member_id: 2,
  women: false
)

Article.create(
  id: 3,
  title: "はじめまして！",
  content: "友達になりませんか？",
  member_id: 4,
  women: true
)
