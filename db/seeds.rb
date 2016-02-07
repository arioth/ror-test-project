# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

100.times do
  user = User.new
  user.email = Faker::Internel.email
  user.password = Faker::Internet.password
  user.password_confirmation = user.password
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.remote_profile_picture_url = Faker::Avatar.image
  user.confirmed_at = Time.now
  user.save
end
