# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating projects...'

winemeup = Project.create!(
  name: 'WineMeUp',
  description: 'Wagon bootcamp final project: we developped in 10 days a MeetUp based platform with one motto, share pleasant moments around wine',
  details: '',
  tools: ['Ruby on Rails', 'Mapbox', 'Devise', 'Cloudinary', 'Websocket & Action', 'Stimulus'],
  where: 'Nantes'
)

portfolio = Project.create!(
  name: 'My Portfolio',
  description: '',
  details: '',
  tools: ['Ruby on Rails', 'Mailgun', 'Cloudinary', 'JQuery', 'Javascript Vanilla', 'Stimulus'],
  where: 'Nantes'
)

mycellar = Project.create!(
  name: 'MyCellarApp',
  description: 'One day one of my clients was complaining about its poorly managed wine cellar. So I decided to develop an App to help and assist wine afficionados to manage their wines',
  details: '',
  tools: ['Ruby on Rails', 'Devise'],
  where: 'Nantes'
)

puts 'Your projects are now loaded...'
