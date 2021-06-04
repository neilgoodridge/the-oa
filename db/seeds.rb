# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seed: Deleting existing records...'

Action.destroy_all
Task.destroy_all
Cause.destroy_all
User.destroy_all

puts 'Seed: Seeding...'


user1 = User.create!(
  email: "malcolm@gmail.com",
  name: "Malcolm",
  password: "123456",
  password_confirmation: "123456",
  points: '0'
)


cause1 = Cause.create!(
  name: '#blacklivesmatter',
  description: "Black Lives Matter (BLM) is a decentralized political and social movement protesting against incidents of police brutality and all racially motivated violence against black people."
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1622721860/uskmmztdbfks9zb5wcbw.png')
cause1.photo.attach(io: file, filename: 'uskmmztdbfks9zb5wcbw.png', content_type: 'image/png')
cause1.save!


cause2 = Cause.create!(
  name: '#equalpay',
  description: "Equal pay for equal work is the concept of labour rights that individuals in the same workplace be given equal pay. It is most commonly used in the context of sexual discrimination, in relation to the gender pay gap."
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1622769045/otmh3woj6lgyu2sds08k.png')
cause2.photo.attach(io: file, filename: 'otmh3woj6lgyu2sds08k.png', content_type: 'image/png')
cause2.save!


cause3 = Cause.create!(
  name: '#seaspiracy'
)

cause4 = Cause.create!(
  name: '#StopKnifeCrime'
)

cause5 = Cause.create!(
  name: '#stopasianhate'
)

cause6 = Cause.create!(
  name: '#KillTheBill!'
)

cause7 = Cause.create!(
  name: '#climatechange'
)

cause8 = Cause.create!(
  name: '#fairpay'
)

task1 = Task.create!(
  name: 'Sign this petition',
  points: '10',
  content: 'Make a difference by signing the petition on Change.org.',
  cause_id: cause1.id,
  time: 10,
  url: 'blank for now'
  )


task2 = Task.create!(
  name: 'Email the representative at blm.com',
  points: '20',
  content: 'This service will assist you by matching your ZIP code to your congressional district, with links to your members website and contact page.',
  cause_id: cause1.id,
  time: 20,
  url: 'blank for now'
  )

action1 = Action.create!(
  completed: false,
  user_id: user1.id,
  task_id: task1.id,
  )

action2 = Action.create!(
  completed: true,
  user_id: user1.id,
  task_id: task2.id,
  )

puts 'Seed: Finished seeding!'
