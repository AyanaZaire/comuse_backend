# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


zola = Member.create(name: "Zola Jones", email: "info@zolajones.com", password: "pw", skill: "Artist and Technologist",  bio: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", location: "Washington, D.C.", website: "zolajones.com")

izzie = Member.create(name: "Izzie Jenkins", email: "info@izziejenkins.com", password: "pw", skill: "Photographer",  bio: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", location: "Brooklyn, N.Y.", website: "izziejenkins.com")

tori = Member.create(name: "Tori James", email: "info@torijames.com", password: "pw", skill: "Designer",  bio: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", location: "Baltimore, MD", website: "torijames.com")
