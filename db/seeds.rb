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
  photo_url:"https://pbs.twimg.com/profile_images/1402645735326113795/kqBVkKdx_400x400.jpg",
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
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623627342/xznfnckvhaczzdh0bizh.png')
cause2.photo.attach(io: file, filename: 'cwvquebn5k8i42xozadr.png', content_type: 'image/png')
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
  description: "Help put an end to the growing knife culture sweeping some of our largest cities. Easy to conceal, hard to catch, and deadly. Let's put an end to this today",
  twitter:'kcvs_updates',
  photo_url:"https://pbs.twimg.com/profile_images/1218898896887406592/anxvcDfT_400x400.jpg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623628212/a9fwicfvuspdy5rhksju.jpg')
cause4.photo.attach(io: file, filename: 't0w7q0odh6wa8rdgeubj.jpg', content_type: 'image/jpg')
cause4.save!

cause5 = Cause.create!(
  name: '#stopasianhate',
  description: "During the pandemic, hate crimes towards East and Southeast Asians have tripled. Stand with these communities against racism in all its forms.",
  twitter:'AAFederation',
  photo_url:"https://pbs.twimg.com/profile_images/1261350526903615488/F-ofI_Ce_400x400.jpg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623342677/hnto9udb6eaxknq1tffq.png')
cause5.photo.attach(io: file, filename: 'hnto9udb6eaxknq1tffq.png', content_type: 'image/png')
cause5.save!

cause6 = Cause.create!(
  name: '#GetHomeSafe!',
  description: "There is clearly a vital conversation to be had around the behaviour of men, and the safety of women within society. Let's look at how we can help women get home safely.",
  twitter:'GetHomeSafeUK',
  photo_url:"https://pbs.twimg.com/profile_images/1041023109300715520/iYwmtUmD_400x400.jpg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623367385/o0a1wqjjj9jsadyxs2xc.png')
cause6.photo.attach(io: file, filename: 'o0a1wqjjj9jsadyxs2xc.png', content_type: 'image/png')
cause6.save!

cause7 = Cause.create!(
  name: '#climatechange',
  description: "Global climate change has already had observable effects on the environment. Glaciers have shrunk, ice on rivers and lakes is breaking up earlier, plant and animal ranges have shifted and trees are flowering sooner. Let's reverse this trend before it's too late!",
  twitter:'UNFCCC',
  photo_url:"https://pbs.twimg.com/profile_images/558658454030540802/CGw9qhaD_400x400.jpeg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623364001/vrwpfclkitjkj5bvxb8a.jpg')
cause7.photo.attach(io: file, filename: 'vrwpfclkitjkj5bvxb8a.jpg', content_type: 'image/jpg')
cause7.save!

cause8 = Cause.create!(
  name: '#fairpay',
  description: "Many of those heralded as heroes and whom we clapped for are getting by on low wages and poor conditions, while holding some of the most stressful yet important roles in society. How can you put that right?",
  twitter:'fairpayworks',
  photo_url:"https://pbs.twimg.com/profile_images/1371615489105883136/VNb4YkXz_400x400.jpg",
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/k2x4b-523p/image/upload/v1623627466/skkozi07aqorndshxqxx.jpg')
cause8.photo.attach(io: file, filename: 'azqmvuifblz86ogjs12o.jpg', content_type: 'image/jpg')
cause8.save!

task1 = Task.create!(
  name: 'Sign this petition',
  points: '10',
  content: 'Make a difference by signing the petition on Change.org',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)

task2 = Task.create!(
  name: 'Email the representative at blm.com',
  points: '20',
  content: 'This service will assist you by matching your post code to your local branch, with links to your members website and contact page',
  cause_id: cause1.id,
  time: 20,
  url: 'https://ag.ny.gov/contact-attorney-general-letitia-james'
)

  task3 = Task.create!(
  name: 'Research and contact the BLAM movement',
  points: '30',
  content: 'Research the BLAM movement, a community outreach programme based around education, and find out what they can provide to your local area',
  cause_id: cause1.id,
  time: 30,
  url: 'https://blamuk.org/'
)

task4 = Task.create!(
  name: 'Anti racism resources',
  points: '30',
  content: 'A wide range of anti racism resources to research and get involved with',
  cause_id: cause1.id, 
  time: 30,
  url: 'https://survivorsnetwork.org.uk/anti-racism-resources/'
)

task5 = Task.create!(
  name: 'Red Cross guide to teaching children about racism',
  points: '30',
  content: 'Raise awareness with children and young people about racism with this guide',
  cause_id: cause1.id, 
  time: 30,
  url: 'https://www.redcross.org.uk/get-involved/teaching-resources/talking-with-children-and-young-people-about-race-and-racism'
)

task6 = Task.create!(
  name: 'Donate to legal aid',
  points: '10',
  content: 'Make a difference by donating to legal aid for BLM related cases',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)

task7 = Task.create!(
  name: 'Education petition',
  points: '10',
  content: 'Sign this petition to push for equality education',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)

task8 = Task.create!(
  name: 'Contact Unison and raise awareness of unions',
  points: '10',
  content: 'Contact Unison for material and information about trade unions, and begin spreading the word to raise awareness',
  cause_id: cause2.id,
  time: 10,
  url: 'https://www.unison.org.uk/get-involved/grow-the-movement/#heading-1'
)

task9 = Task.create!(
  name: 'Volunteer with the Equality Trust in your local area',
  points: '40',
  content: "Contact your local Equality Trust movement and volunteer your time! This is an ongoing task and you can choose a level of commitment that suits you",
  cause_id: cause2.id,
  time: 60,
  url: 'https://www.equalitytrust.org.uk/local-groups'
)

task10 = Task.create!(
  name: 'Fund raise for Equality Trust',
  points: '30',
  content: "Fund raise for the Equality Trust",
  cause_id: cause2.id,
  time: 30,
  url: 'https://www.equalitytrust.org.uk/fundraise-equality-trust'
)

task11 = Task.create!(
  name: 'Share the trailer',
  points: '5',
  content: "Share the trailer for Seaspiracy to social media to raise awareness of the film and its message",
  cause_id: cause3.id,
  time: 2,
  url: 'https://www.youtube.com/watch?v=1Q5CXN7soQg'
)

task12 = Task.create!(
  name: 'Sign this petition for protection of the ocean',
  points: '10',
  content: "Sign this petition to call on the government to make a real difference to our oceans",
  cause_id: cause3.id,
  time: 5,
  url: 'https://action.greenpeace.org.uk/l/854853/2021-04-23/qwm74?source=UN&subsource=OCMRGLPEUN02GK&utm_source=bsd&utm_medium=redirect&utm_campaign=post%20pardot%20launch%20redirect'
)

task13 = Task.create!(
  name: 'Review resources to become an ocean activist',
  points: '15',
  content: 'Inspired by Seaspiracy? Review resources to become an ocean activist',
  cause_id: cause3.id,
  time: 15,
  url: 'https://www.bigblueoceancleanup.org/become-an-ocean-activist'
)

task14 = Task.create!(
  name: 'Check out Sea7, a live streamed ocean activist training camp',
  points: '60',
  content: 'A wide range of resources to review following the G7 summit, and actions that can be taken',
  cause_id: cause3.id,
  time: 60,
  url: 'https://sea7.finisterre.com/'
)

task15 = Task.create!(
  name: 'Research local activism',
  points: '10',
  content: 'Research ocean related activism close to you',
  cause_id: cause3.id,
  time: 10,
  url: 'https://www.bigblueoceancleanup.org/become-an-ocean-activist'
)

task16 = Task.create!(
  name: 'Education petition',
  points: '10',
  content: 'Sign this petition to push for education on ocean issues',
  cause_id: cause3.id,
  time: 10,
  url: 'https://www.bigblueoceancleanup.org/become-an-ocean-activist'
)

task17 = Task.create!(
  name: 'Share on social media',
  points: '5',
  content: 'Share content on social media to spread the word and raise awareness of Stop Asian Hate',
  cause_id: cause5.id,
  time: 5,
  url: 'https://stopasianhate.carrd.co/#videos'
)

task18 = Task.create!(
  name: 'Get involved with the Southeast and East Asian centre',
  points: '30',
  content: 'Research the SEEAC, find out what they do and how you can get involved',
  cause_id: cause5.id,
  time: 30,
  url: 'https://www.seeac.org.uk/'
)

task19 = Task.create!(
  name: 'Learn what you can do to stop hate crime',
  points: '15',
  content: 'Check out these resources to find out how you can help with hate crime',
  cause_id: cause5.id,
  time: 15, 
  url: 'https://www.stophateuk.org/resources/'
)

task20 = Task.create!(
  name: '7 practical ways to assist the cause',
  points: '30',
  content: 'Read this list and choose the practical actions to take to support the cause',
  cause_id: cause5.id,
  time: 30,
  url: 'https://www.stylist.co.uk/life/how-to-support-stop-asian-hate/530984'
)

task21 = Task.create!(
  name: 'Education petition',
  points: '10',
  content: 'Sign this petition to push for education on equality issues',
  cause_id: cause5.id,
  time: 10,
  url: 'https://www.stylist.co.uk/life/how-to-support-stop-asian-hate/530984'
)

task22 = Task.create!(
  name: 'Support local Asian businesses',
  points: '10',
  content: 'Resource for supporting effected Asian business in your community',
  cause_id: cause5.id,
  time: 10,
  url: 'https://www.goodhousekeeping.com/life/a35768747/asian-owned-businesses/'
)

task23 = Task.create!(
  name: 'Visit http://www.flock525.club/ now!',
  points: '50',
  content: 'Tell every woman in your life to visit this site and help to get home safely',
  cause_id: cause6.id,
  time: 5,
  url: 'http://www.flock525.club/'
)

task24 = Task.create!(
  name: 'Save water in your own home',
  points: '5',
  content: 'Save water in your own home with these practical tips',
  cause_id: cause3.id,
  time: 5,
  url: 'https://watersworthsaving.org.uk/top-tips/?utm_source=bing&utm_campaign=mt-wws21-how-save&utm_medium=cpc&utm_content=bing-how-save-1'
)
 
task25 = Task.create!(
  name: 'Promote veganism',
  points: '15',
  content: 'Promote a diet and lifestyle consistent with Seaspiracy',
  cause_id: cause3.id,
  time: 15,
  url: 'https://www.peta.org.uk/'
)
 
task26 = Task.create!(
  name: 'Protest fisheries',
  points: '30',
  content: 'Get involved with protests against fisheries',
  cause_id: cause3.id,
  time: 30, 
  url: 'https://action.greenpeace.org.uk/l/854853/2021-04-23/qwlqv?source=UN&subsource=NBRENAPEUN03GG&utm_source=bsd&utm_medium=redirect&utm_campaign=post+pardot+launch+redirect'
)

task27 = Task.create!(
  name: 'Hand out leaflets and flyers in your local area',
  points: '10',
  content: 'Get involved practically and hand out our leaflets and posters around your area', 
  cause_id: cause1.id,
  time: 15,
  url: 'https://blacklivesmatter.com/'
)

task28 = Task.create!(
  name: 'Hand out leaflets and flyers in your local area',
  points: '10',
  content: 'Get involved practically and place our leaflets and posters around your area', 
  cause_id: cause5.id,
  time: 15, 
  url: 'https://www.stophateuk.org/resources/'
)

task29 = Task.create!(
  name: 'Resources directory',
  points: '30',
  content: 'A compilation of resources and tools that you can use to help Asian communities in the UK',
  cause_id: cause5.id,
  time: 30,
  url: 'https://www.buzzfeed.com/victoriavouloumanos/anti-asian-racism-and-violence-resources'
)

task30 = Task.create!(
  name: 'Share this playlist online',
  points: '5',
  content: 'Share this specially curated playlist on your social media to promote the cause',
  cause_id: cause5.id,
  time: 5,
  url: 'https://qat.btrtoday.com/read/featured/stopasianhate-playlist-list-of-anti-asian-violence-resources/'
)

task31 = Task.create!(
  name: 'Share this playlist online',
  points: '5',
  content: 'Share songs of empowerment and pride to promote the cause',
  cause_id: cause1.id,
  time: 5,
  url: 'https://open.spotify.com/playlist/37i9dQZF1DWWAqc46ZJdZf'
)

task32 = Task.create!(
  name: 'Black owned businesses directory',
  points: '15',
  content: 'Resource for supporting black owned businesses in the UK',
  cause_id: cause1.id,
  time: 15,
  url: 'https://www.ukblackowned.co.uk/'
)

task33 = Task.create!(
  name: 'Raise awareness of ESEA Sisters',
  points: '5',
  content: 'Promote this meeting space for Asian women as a safe space community',
  cause_id: cause5.id,
  time: 5,
  url: 'https://theface.com/life/esea-sisters-anti-asian-hate-racism-britain-activism-ying-suen-susie-lau'
)

task34 = Task.create!(
  name: 'Participate in a beach clean',
  points: '60',
  content: 'Get involved practically with a beach clean, check this website for resources',
  cause_id: cause3.id,
  time: 60,
  url: 'https://beachcleans.org.uk/'
)

task35 = Task.create!(
  name: 'BLM resources page',
  points: '15',
  content: 'Check out the BLM resources page for help with your activism',
  cause_id: cause1.id,
  time: 15,
  url: 'https://blacklivesmatter.com/resources/?__cf_chl_jschl_tk__=55cb2d831ab7079bc0beb04b83dd3220bb7c2776-1624564333-0-AXogIZjXwOoRvEg58Dtb0L6upVAsg6zS7QbXzIcfEHrBmm-P8d6IyZlbzXpZsepry2ENnVaAnI1MUbEa3HeZc34m8rW1oqnwZxrFenVgH8jHa7blpSSDiYGQzVwOUjybpvsUl04OhpT09IEhHtXf_MLqrwoEUuC3fYujvkONxWG0xo86BIn86Wgq2_nGJPhJwvO-wBdeV7RW10EvRdXin6LR3N0K9XQJkwjr5vQvZLY6ZW_TItxVj0H2tzQ-vBNFz7W_g3_-BAVYY6cTPX-qhFNClRwmt2khMPWvOnyG4z16EUtyi95kSUx_1R62pKhv0Bj81a-QkG7hOFI9SgTcdQ8ZJGUVjc9ZahkyoDZwlKdTPhKuRURnyF5NXCCPEqZcdi1iNVkXswcJlq3LCBD7J0m-e_zi-KS2taf-CVObLQ505BJQumQ87tclIAGmZMEJ8O-wLuiTI_H8nvjRnphfr0c'
)

task36 = Task.create!(
  name: 'Visit the Marine Consevation Society page',
  points: '15', 
  content: 'Check out the MCS and their information. Join or donate!',
  cause_id: cause3.id,
  time: 15,
  url: 'https://www.mcsuk.org/'
)

task37 = Task.create!(
  name: 'Mental health resources for BAME communities',
  points: '15',
  content: 'Use this resource to bare the mental effect of hate crimes in mind when undertaking your activism',
  cause_id: cause5.id,
  time: 15,
  url: 'https://www.mentalhealth.org.uk/a-to-z/b/black-asian-and-minority-ethnic-bame-communities'
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
  task_id: task10.id,
  )

puts 'Seed: Finished seeding!'
