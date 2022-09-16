Book.create!([
  {title: "Amazing turtles", author: "sam", price: "23.0", published: "2022-01-16"},
  {title: "create user book", author: "tom", price: "45.0", published: "2017-09-16"}
])
User.create!([
  {username: "Turtle person"},
  {username: "Axolotl"}
])
UserBook.create!([
  {user_id: 2, book_id: 1},
  {user_id: 2, book_id: 2}
])
