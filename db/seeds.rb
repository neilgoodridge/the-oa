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
Organisation.destroy_all
Cause.destroy_all
User.destroy_all

puts 'Seed: Seeding...'


user2 = User.create!(
  email: "malcolm@gmail.com",
  name: "Malcolm",
  password: "123456",
  password_confirmation: "123456",
  points: '0'
)

user1 = User.create!(
  email: "greta@gmail.com",
  name: "Greta Thunberg",
  password: "123456",
  password_confirmation: "123456",
  points: '0'
)


cause1 = Cause.create!(
  name: '#blacklivesmatter',
  description: "Black Lives Matter (BLM) is a decentralized political and social movement protesting against incidents of police brutality and all racially motivated violence against black people.",
  twitter:'Blklivesmatter',
  photo_url:"https://pbs.twimg.com/profile_images/1402645735326113795/kqBVkKdx_400x400.jp",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623344444/ndovtj0kxvy5ys9edyyw.png')
cause1.photo.attach(io: file, filename: 'ndovtj0kxvy5ys9edyyw.png', content_type: 'image/png')
cause1.save!


cause2 = Cause.create!(
  name: '#equalpay',
  description: "Equal pay for equal work is the concept of labour rights that individuals in the same workplace be given equal pay. It is most commonly used in the context of sexual discrimination, in relation to the gender pay gap.",
  twitter:'EqualPay2dayOrg',
  photo_url:"https://pbs.twimg.com/profile_images/1399774074830606338/G40HK4bO_400x400.jpg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623342770/cwvquebn5k8i42xozadr.webp')
cause2.photo.attach(io: file, filename: 'cwvquebn5k8i42xozadr.webp', content_type: 'image/webp')
cause2.save!


cause3 = Cause.create!(
  name: '#seaspiracy',
  description: 'Learn about the human impact on marine life such as plastic marine debris, ghost nets and overfishing around the world.',
  twitter:'seaspiracy',
  photo_url:"https://pbs.twimg.com/profile_images/1360528702841495557/d_e1htpc_400x400.jpg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1623363808/zhjqxcjubfcp4oecbtqt.jpg')
cause3.photo.attach(io: file, filename: 'zhjqxcjubfcp4oecbtqt.jpg', content_type: 'image/jpg')
cause3.save!

cause4 = Cause.create!(
  name: '#StopKnifeCrime',
  description: "Help put an end to the growing knife culture sweeping some of our largest cities. Easy to conceal, hard to catch, and deadly. Let's put an end to this today"
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623352054/t0w7q0odh6wa8rdgeubj.jpg')
cause4.photo.attach(io: file, filename: 't0w7q0odh6wa8rdgeubj.jpg', content_type: 'image/jpg')
cause4.save!

cause5 = Cause.create!(
  name: '#stopasianhate',
  description: "During the pandemic, hate crimes towards East and Southeast Asians have tripled. Stand with these communities against racism in all its forms.",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623342677/hnto9udb6eaxknq1tffq.png')
cause5.photo.attach(io: file, filename: 'hnto9udb6eaxknq1tffq.png', content_type: 'image/png')
cause5.save!

cause6 = Cause.create!(
  name: '#GetHomeSafe!',
  description: "There is clearly a vital conversation to be had around the behaviour of men, and the safety of women within society. Let's look at how we can help women get home safely."
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623367385/o0a1wqjjj9jsadyxs2xc.png')
cause6.photo.attach(io: file, filename: 'o0a1wqjjj9jsadyxs2xc.png', content_type: 'image/png')
cause6.save!

cause7 = Cause.create!(
  name: '#climatechange',
  description: "Global climate change has already had observable effects on the environment. Glaciers have shrunk, ice on rivers and lakes is breaking up earlier, plant and animal ranges have shifted and trees are flowering sooner. Let's reverse this trend before it's too late!"
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623364001/vrwpfclkitjkj5bvxb8a.jpg')
cause7.photo.attach(io: file, filename: 'vrwpfclkitjkj5bvxb8a.jpg', content_type: 'image/jpg')
cause7.save!

cause8 = Cause.create!(
  name: '#fairpay',
  description: "Many of those heralded as heroes and whom we clapped for are getting by on low wages and poor conditions, while holding some of the most stressful yet important roles in society. How can you put that right?"
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623364777/azqmvuifblz86ogjs12o.png')
cause8.photo.attach(io: file, filename: 'azqmvuifblz86ogjs12o.png', content_type: 'image/png')
cause8.save!

task1 = Task.create!(
  name: 'Sign this petition',
  points: '10',
  content: 'Make a difference by signing the petition on Change.org.',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)

task2 = Task.create!(
  name: 'Email the representative at blm.com',
  points: '20',
  content: 'This service will assist you by matching your ZIP code to your congressional district, with links to your members website and contact page.',
  cause_id: cause1.id,
  time: 20,
  url: 'https://ag.ny.gov/contact-attorney-general-letitia-james'
)

  task3 = Task.create!(
  name: 'Research and contact the BLAM movement',
  points: '20',
  content: 'Research the BLAM movement, a community outreach programme based around education, and find out what they can provide to your local area.',
  cause_id: cause1.id,
  time: 30,
  url: 'https://blamuk.org/'
)

task4 = Task.create!(
  name: 'Contact Unison and raise awareness of unions',
  points: '10',
  content: 'Contact Unison for material and information about trade unions, and begin spreading the word to raise awareness.',
  cause_id: cause2.id,
  time: 10,
  url: 'https://www.unison.org.uk/get-involved/grow-the-movement/#heading-1'
)

task5 = Task.create!(
  name: 'Volunteer with the Equality Trust in your local area',
  points: '40',
  content: "Contact your local Equality Trust movement and volunteer your time! This is an ongoing task and you can choose a level of commitment that suits you.",
  cause_id: cause2.id,
  time: 60,
  url: 'https://www.equalitytrust.org.uk/local-groups'
)

task6 = Task.create!(
  name: 'Share the trailer',
  points: '5',
  content: "Share the trailer for Seaspiracy to social media to raise awareness of the film and its message",
  cause_id: cause3.id,
  time: 2,
  url: 'https://www.youtube.com/watch?v=1Q5CXN7soQg'
)

task7 = Task.create!(
  name: 'Sign this petition for protection of the ocean',
  points: '10',
  content: "Sign this petition to call on the government to make a real difference to our oceans.",
  cause_id: cause3.id,
  time: 5,
  url: 'https://action.greenpeace.org.uk/l/854853/2021-04-23/qwm74?source=UN&subsource=OCMRGLPEUN02GK&utm_source=bsd&utm_medium=redirect&utm_campaign=post%20pardot%20launch%20redirect'
)

task8 = Task.create!(
  name: 'Share on social media',
  points: '5',
  content: "Share content on social media to spread the word and raise awareness",
  cause_id: cause5.id,
  time: 5,
  url: 'https://stopasianhate.carrd.co/#videos'
)

task9 = Task.create!(
  name: 'Get involved with the Southeast and East Asian centre',
  points: '30',
  content: 'Research the SEEAC, find out what they do and how you can get involved',
  cause_id: cause5.id,
  time: 40,
  url: 'https://www.seeac.org.uk/'
)
task10 = Task.create!(
  name: 'Visit http://www.flock525.club/ now!',
  points: '50',
  content: 'Tell every woman in your life to visit this site and help to get home safely',
  cause_id: cause6.id,
  time: 5,
  url: 'http://www.flock525.club/'
)

task11 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause1.id,
  time: 2
)

task12 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause2.id,
  time: 2
)

task13 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause3.id,
  time: 2
)

task14 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause4.id,
  time: 2
)

task15 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause5.id,
  time: 2
)

task16 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause6.id,
  time: 2
)

task17 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause7.id,
  time: 2
)
task18 = Task.create!(
  name: 'registered',
  points: '5',
  content: 'Thanks for making a difference and joining the OA',
  cause_id: cause8.id,
  time: 2
)
organisation1 = Organisation.create!(
  name: 'Black Lives Matter',
  url: 'https://www.blacklivesmatter.uk/',
  cause_id: cause1.id,
)

organisation2 = Organisation.create!(
  name: 'The Reach Out Project',
  url: 'https://www.reachoutproject.co.uk/',
  cause_id: cause1.id,
)

organisation3 = Organisation.create!(
  name: 'ACAS: Equal Pay',
  url: 'https://www.acas.org.uk/equal-pay',
  cause_id: cause2.id,
)

organisation4 = Organisation.create!(
  name: 'Equality and Human Rights Commission',
  url: 'https://www.equalityhumanrights.com/en/our-work/equal-pay',
  cause_id: cause2.id,
)

organisation5 = Organisation.create!(
  name: 'Seaspiracy',
  url: 'https://www.seaspiracy.org/',
  cause_id: cause3.id,
)

organisation6 = Organisation.create!(
  name: 'How to support Stop Asian Hate in the UK',
  url: 'https://www.bustle.com/life/how-to-support-the-stopasianhate-campaign-in-the-uk',
  cause_id: cause5.id,
)

organisation7 = Organisation.create!(
  name: 'Stop Hate UK',
  url: 'https://www.stophateuk.org/',
  cause_id: cause5.id,
)

organisation8 = Organisation.create!(
  name: "Flock",
  url: 'http://www.flock525.club/',
  cause_id: cause6.id,
)

action1 = Action.create!(
  completed: true,
  user_id: user1.id,
  task_id: task1.id,
  )

action2 = Action.create!(
  completed: true,
  user_id: user1.id,
  task_id: task2.id,
  )

action3 = Action.create!(
  completed: true,
  user_id: user1.id,
  task_id: task11.id,
  )

puts 'Seed: Finished seeding!'
