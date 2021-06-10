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

user2 = User.create!(
  email: "greta@gmail.com",
  name: "Greta Thunberg",
  password: "123456",
  password_confirmation: "123456",
  points: '0'
)


cause1 = Cause.create!(
  name: '#blacklivesmatter',
  description: "Black Lives Matter (BLM) is a decentralized political and social movement protesting against incidents of police brutality and all racially motivated violence against black people."
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/c_scale,h_140,w_250/v1622721860/uskmmztdbfks9zb5wcbw.png')
cause1.photo.attach(io: file, filename: 'uskmmztdbfks9zb5wcbw.png', content_type: 'image/png')
cause1.save!


cause2 = Cause.create!(
  name: '#equalpay',
  description: "Equal pay for equal work is the concept of labour rights that individuals in the same workplace be given equal pay. It is most commonly used in the context of sexual discrimination, in relation to the gender pay gap."
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/c_scale,h_140,w_250/v1622769045/otmh3woj6lgyu2sds08k.png')
cause2.photo.attach(io: file, filename: 'otmh3woj6lgyu2sds08k.png', content_type: 'image/png')
cause2.save!


cause3 = Cause.create!(
  name: '#seaspiracy',
  description: 'Learn about the human impact on marine life such as plastic marine debris, ghost nets and overfishing around the world.'
)

cause4 = Cause.create!(
  name: '#StopKnifeCrime',
  description: "Help put an end to the growing knife culture sweeping some of our largest cities. Easy to conceal, hard to catch, and deadly. Let's put an end to this today"
)

cause5 = Cause.create!(
  name: '#stopasianhate',
  description: "During the pandemic, hate crimes towards East and Southeast Asians have tripled. Stand with these communities against racism in all its forms."
)

cause6 = Cause.create!(
  name: '#KillTheBill!',
  description: "This bill will boost powers that police can use on so-called 'static protests', to bring them in line with protest marches. This will include imposing start and finish times, as well as 'maximum noise limits' and harsher sentencing"
)

cause7 = Cause.create!(
  name: '#climatechange',
  description: "Global climate change has already had observable effects on the environment. Glaciers have shrunk, ice on rivers and lakes is breaking up earlier, plant and animal ranges have shifted and trees are flowering sooner. Let's reverse this trend before it's too late!"
)

cause8 = Cause.create!(
  name: '#fairpay',
  description: "Many of those heralded as heroes and whom we clapped for are getting by on low wages and poor conditions, while holding some of the most stressful yet important roles in society. How can you put that right?"
)

task1 = Task.create!(
  name: 'Sign this petition',
  points: '10',
  content: 'Make a difference by signing the petition on Change.org.',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.google.co.uk/'
)

task2 = Task.create!(
  name: 'Email the representative at blm.com',
  points: '20',
  content: 'This service will assist you by matching your ZIP code to your congressional district, with links to your members website and contact page.',
  cause_id: cause1.id,
  time: 20,
  url: 'https://www.google.co.uk/'
)

  task3 = Task.create!(
  name: 'Research and contact the BLAM movement',
  points: '20',
  content: 'Research the BLAM movement, a community outreach programme based around education, and find out what they can provide to your local area.',
  cause_id: cause1.id,
  time: 30,
  url: 'https://blamuk.org/'
)

task1 = Task.create!(
  name: 'Contact Unison and raise awareness of unions',
  points: '10',
  content: 'Contact Unison for material and information about trade unions, and begin spreading the word to raise awareness.',
  cause_id: cause2.id,
  time: 10,
  url: 'https://www.unison.org.uk/get-involved/grow-the-movement/#heading-1'
)

task2 = Task.create!(
  name: 'Volunteer with the Equality Trust in your local area',
  points: '40',
  content: "Contact your local Equality Trust movement and volunteer your time! This is an ongoing task and you can choose a level of commitment that suits you.",
  cause_id: cause2.id,
  time: 60, 
  url: 'https://www.equalitytrust.org.uk/local-groups'
)

task1 = Task.create!(
  name: 'Share the trailer',
  points: '5',
  content: "Share the trailer for Seaspiracy to social media to raise awareness of the film and its message",
  cause_id: cause3.id,
  time: 2,
  url: 'https://www.youtube.com/watch?v=1Q5CXN7soQg'
)

task2 = Task.create!(
  name: 'Sign this petition for protection of the ocean',
  points: '10',
  content: "Sign this petition to call on the government to make a real difference to our oceans.",
  cause_id: cause3.id, 
  time: 5,
  url: 'https://action.greenpeace.org.uk/l/854853/2021-04-23/qwm74?source=UN&subsource=OCMRGLPEUN02GK&utm_source=bsd&utm_medium=redirect&utm_campaign=post%20pardot%20launch%20redirect'
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
