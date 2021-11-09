# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
    user = Faker::Internet.user('username', 'email')
    User.create!(
        username: user['username'],
        email: user['email']
    )
end

25.times do
    PostF.create!(
        title: Faker::Lorem.question,
        content: Faker::Lorem.paragraph(sentence_count: rand(5)),
        user_id: User.order("random()").first
    )
end