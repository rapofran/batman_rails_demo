# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

25.times do |i|
  sleep 1 # so we can have unique timestamps
  Post.create(:title => "Post #{i}", :content => "#{Faker::Lorem.paragraph(5)}")
end