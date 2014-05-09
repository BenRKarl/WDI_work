User.delete_all
100.times do |t|
  User.create(username: Faker::Name.name)
end