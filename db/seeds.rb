# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts 'Destroying seeds...'

Project.destroy_all

puts 'Creating projects...'

winemeup = Project.create!(
  name: 'WineMeUp',
  description: 'Wagon bootcamp final project: In a 10 days sprint, we developed MeetUp based platform with one motto, share pleasant moments around wine',
  details: '',
  tools: ['Ruby on Rails', 'Mapbox', 'Devise', 'Cloudinary', 'Websocket & Action', 'Stimulus'],
  where: 'Nantes'
)

file = URI.open("https://res.cloudinary.com/dvl66pleu/image/upload/v1665048975/project_two_lymtyc.png")
winemeup.photo.attach(io: file, filename: "project_two", content_type: "image/png")
winemeup.save

portfolio = Project.create!(
  name: 'My Portfolio',
  description: 'Before kicking off my research for a job as a Fullstack Developer I decided to work on this portfolio to better explain my approach to this move/career change',
  details: '',
  tools: ['Ruby on Rails', 'Mailgun', 'Cloudinary', 'JQuery', 'Javascript', 'Vanilla', 'Stimulus'],
  where: 'Nantes'
)

file = URI.open("https://res.cloudinary.com/dvl66pleu/image/upload/v1665048984/project_three_s3ltin.png")
portfolio.photo.attach(io: file, filename: "project_three", content_type: "image/png")
portfolio.save

mycellar = Project.create!(
  name: 'MyCellarApp',
  description: '*current project - in progress* One day one of my clients was complaining about its poorly managed wine cellar. So I decided to develop an App to help and assist wine aficionados to manage their wines',
  details: '',
  tools: [
    'Ruby on Rails',
    'Devise'
  ],
  where: 'Nantes'
)

file = URI.open("https://res.cloudinary.com/dvl66pleu/image/upload/v1665048984/project_three_s3ltin.png")
mycellar.photo.attach(io: file, filename: "project_three", content_type: "image/png")
mycellar.save

puts 'Your projects are now loaded...'
