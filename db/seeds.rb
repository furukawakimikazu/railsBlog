# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'g.guquan@gmail.com',
  password: 'password'
)

50.times do 
  User.create(
  email: Faker::Internet.email,
  password: 'password'
  )
end

50.times do
  Article.create(
    title: Faker::Food.fruits,
    body: 'これは正式な文章の代わりに入れて使うダミーテキストです。本文用なので使い方を間違えると不自然に見えることもありますので要注意。文章に特に深い意味はありません。この組見本は自由に複製したり頒布することができます。書体やレイアウトなどを確認するために用います。本文用なので使い方を間違えると不自然に見えることもありますので要注意。'
  )
end