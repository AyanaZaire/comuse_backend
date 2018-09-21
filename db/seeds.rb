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

jade = Member.create(name: "Jade Love", email: "info@jadelove.com", password: "pw", skill: "Musician",  bio: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", location: "Pittsburgh, PA", website: "jadelove.com")

alex = Member.create(name: "Alex Moore", email: "info@alexmoore.com", password: "pw", skill: "Writer and Independent Publisher",  bio: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", location: "Los Angeles, CA", website: "alexmoore.com")

Category.create([
 {name: 'Arts'},
 {name: 'Textile'},
 {name: 'Music'},
 {name: 'Technology'},
 {name: 'Design'}
])

Section.create([
  {title:'Beginning Painting', description: 'Students will learn the fundamentals of painting: materials and tools, paint handling, shape, value, basic color mixing, space and composition in this series of foundation classes. The sequence of courses runs the full academic year with a different emphasis each term, and provides a solid foundation for students interested in developing their perceptual and aesthetic skills. Fall term covers shape, value and planes in depth; winter emphasizes color; and spring is pictorial space and composition – although each are covered to different degrees in every term.', duration: '3hrs', category_id: 1, teacher_id: Member.find_by(id: 1).id, location: 'Washington, D.C.', price: '75.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome' },

  {title:'Weaving to Code, Coding to Weave', description: 'Learn the history and basic practices of weaving as a way to understand the binary system and its importance in computer programming. Participants will take part in weaving and coding activities throughout three sessions that intertwine the relationship between craft and digital work.', duration: '3hrs', category_id: 4, teacher_id: Member.find_by(id: 1).id, location: 'Washington, D.C.', price: '60.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Clay Sculpture: Figurative Humanism', description: 'Crucially important for all artists, sculpture sharpens the visual skills essential to seeing and developing the three-dimensional aspects of human form. Through the sense of touch, students will understand masses in relation to each other and surrounding space, as well as the definition and direction of planes, leading to an understanding of gesture, weight, balance, rhythm, and the essential spirit of the pose. The ultimate goal is to develop a vocabulary and ability to connect form and feeling. Work will be from the figure model.', duration: '3hrs', category_id: 1, teacher_id: Member.find_by(id: 2).id, location: 'Washington, D.C.', price: '90.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome' },

  {title:'Learn To Sew', description: 'Learn basic sewing skills, sewing machine & tool basics, sew seams & construct a simple pillow! Intended for adults & teens 15 & older. This class includes free sewing supplies (while they last).', duration: '3hrs', category_id: 2, teacher_id: Member.find_by(id: 3).id, location: 'Washington, D.C.', price: '50.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'HTML/CSS Crash Course!', description: 'All modern websites utilize HTML (the structures that support the web) and CSS (the language that makes the web look beautiful) as part of their site structure. We also introduce you to JavaScript, the programming language of the web. If you have any interest in editing, enhancing, or uploading information on the world wide web, this course will teach you how to do it.', duration: '3hrs', category_id: 4, teacher_id: Member.find_by(id: 4).id, location: 'Washington, D.C.', price: '120.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Introduction To Adobe Illustrator', description: 'Bring your creative ideas to life with Adobe Illustrator, the industry-standard vector graphics software, used by designers and illustrators who want to create digital graphics, logos, illustrations, and original typography. This workshop is designed to get you up and running with Adobe Illustrator in just one day. The focus will be on step-by-step instruction leading students through the most important tools and concepts in Illustrator.', duration: '3hrs', category_id: 5, teacher_id: Member.find_by(id: 3).id, location: 'Washington, D.C.', price: '85.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Essential Music Theory', description: 'Many people believe it is hard to learn to read music. It isnt! In fact, reading music is a little like learning to read another language, but much easier than most languages to learn!. In fact, if you are reading this - you can learn how to read music with just a little effort.', duration: '3hrs', category_id: 3, teacher_id: Member.find_by(id: 4).id, location: 'Washington, D.C.', price: '60.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'}
  ])

Course.create([
  {time: '1:00 PM', date: '2018-09-06', student_max: 4, section_id: 1},
  {time: '2:00 PM', date: '2018-09-07', student_max: 4, section_id: 1},
  {time: '3:00 PM', date: '2018-09-08', student_max: 4, section_id: 1},
  {time: '4:00 PM', date: '2018-09-09', student_max: 3, section_id: 2},
  {time: '5:00 PM', date: '2018-09-10', student_max: 3, section_id: 2},
  {time: '6:00 PM', date: '2018-09-11', student_max: 1, section_id: 3},
  {time: '7:00 PM', date: '2018-09-12', student_max: 2, section_id: 4},
  {time: '10:00 AM', date: '2018-09-13', student_max: 2, section_id: 5},
  {time: '11:00 AM', date: '2018-09-14', student_max: 2, section_id: 6},
  {time: '12:00 PM', date: '2018-09-15', student_max: 1, section_id: 7}
  ])

painting_section = Enrolled.create(student_id: 2, section_id: 1)
painting_section = Enrolled.create(student_id: 3, section_id: 1)
painting_section = Enrolled.create(student_id: 4, section_id: 1)
painting_section = Enrolled.create(student_id: 5, section_id: 1)
weave_code_section = Enrolled.create(student_id: 4, section_id: 2)
weave_code_section = Enrolled.create(student_id: 2, section_id: 2)
weave_code_section = Enrolled.create(student_id: 3, section_id: 2)
sculpture_section = Enrolled.create(student_id: 1, section_id: 3)
sew_section = Enrolled.create(student_id: 2, section_id: 4)
sew_section = Enrolled.create(student_id: 5, section_id: 4)
html_section = Enrolled.create(student_id: 5, section_id: 5)
html_section = Enrolled.create(student_id: 3, section_id: 5)
adobe_section = Enrolled.create(student_id: 2, section_id: 6)
adobe_section = Enrolled.create(student_id: 5, section_id: 6)
music_section = Enrolled.create(student_id: 3, section_id: 7)
