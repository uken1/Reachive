50.times do |n|
  email = Faker::Internet.email
  password = "password"
  name = "ナンバー#{n + 1}"
  user = User.create!(email: email,
                    password: password,
                    password_confirmation: password,
                    name: name,
                    uid: User.create_unique_string
                    )
  blog = Blog.create(
    title: "トピック#{n + 1}",
    content: "トピックコメント",
    user_id: user.id,
  )

  20.times do
    blog.comments.build(user_id: 3,
                     content: 'コメントテスト')
    blog.save
  end
end