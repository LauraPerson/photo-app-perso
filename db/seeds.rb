# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Serie.destroy_all


2.times do |n|
  user = User.create!(
    email: "admin#{n+1}@laura.fr",
    password: "laura29",
    admin: true
  )
  puts "created #{user.id} admin users"
end

2.times do |n|
  user = User.create!(
    email: "user#{n+1}@laura.fr",
    password: "laura29",
    admin: false
  )

  puts "created #{user.id} normal users"
end

5.times do |n|
  serie = Serie.create!(
    name: "Serie #{n+1}",
    description: Faker::Quote.matz
  )
  puts "created #{serie.id} series"
end

10.times do |n|
  serie = Serie.all.sample
  image = Image.create!(
    name: "Image #{n+1}",
    description: Faker::Quote.matz,
    technique: "Analog",
    location: "Paris",
    date: "Mai 2021",
    camera: "Nikon",
    serie: serie
  )

  puts "created #{image.id} images"
end