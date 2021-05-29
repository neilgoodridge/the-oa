# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seed: Deleting existing records...'

Task.destroy_all
Action.destroy_all
Cause.destroy_all
User.destroy_all

puts 'Seed: Seeding...'


user1 = User.create!(
  email: "malcolm@gmail.com",
  name: "Malcolm",
  password: "123456",
  password_confirmation: "123456"
  points: '0'
)


cause1 = Cause.create!(
  name: ' #blacklivesmatter'
)

cause2 = Cause.create!(
  name: '#equalpay'
)

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

cause9 = Cause.create!(
  name: '#'
)

task1 = Task.create!(
  name: 'Sign this petition'
  points: '10'
  content: 'Make a difference by signing the petition on Change.org. '
  cause_id: cause1
  time: '10'
  )


task2 = Task.create!(
  name: 'Email the representative at blm.com'
  points: '20'
  content: 'This service will assist you by matching your ZIP code to your congressional district, with links to your members website and contact page.  '
  cause_id: cause1
  time: '20'
  )

action1 = Action.create!(
  completed: false
  user_id: user1
  task_id: task1
  )

action2 = Action.create!(
  completed: true
  user_id: user1
  task_id: task2
  )

puts 'Seed: Finished seeding!'
