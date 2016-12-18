# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = ["John", "Joe", "Jake", "Erik"]
anatomy_name = ["legs", "arms", "obliques", "back", "neck", "thighs", "glutes"]

names.each do |name|
  users = User.new(name: name, email: "#{name}@gmail.com", password: "password")
  users.save
  2.times do
    anatomies = Anatomy.new(anatomoy_name: anatomy_name.rand)  
    anatomies.save
  end
end

users = Users.all
anatomies = Anatomy.all

anatomies.each do |anatomy|
  users.each do |user|
    anatomy_user = AnatomyUser.new(
      user_id: user.id,
      anatomy_id: anatomy.id
      )
    anatomy_user.save
  end
end