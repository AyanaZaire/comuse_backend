# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

zola = Member.create(name: "Zola Jones", email: "info@zolajones.com", password: "pw", skill: "Artist and Technologist",  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.", location: "Washington, D.C.", website: "zolajones.com")

izzie = Member.create(name: "Izzie Jenkins", email: "info@izziejenkins.com", password: "pw", skill: "Photographer",  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.", location: "Brooklyn, N.Y.", website: "izziejenkins.com")

tori = Member.create(name: "Tori James", email: "info@torijames.com", password: "pw", skill: "Designer",  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu.", location: "Baltimore, MD", website: "torijames.com")

jade = Member.create(name: "Jade Love", email: "info@jadelove.com", password: "pw", skill: "Musician",  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.", location: "Pittsburgh, PA", website: "jadelove.com")

james = Member.create(name: "James Blue", email: "info@jamesblue.com", password: "pw", skill: "Writer and Independent Publisher",  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.", location: "Los Angeles, CA", website: "jamesblue.com")

Category.create([
 {name: 'Arts', img_url: 'https://images.unsplash.com/photo-1517697471339-4aa32003c11a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=536017f343bb7c828ade2c684f2856dc&auto=format&fit=crop&w=1055&q=80'},
 {name: 'Textile', img_url: 'https://images.unsplash.com/photo-1534639077088-d702bcf685e7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=39cd83b1cb4089e47a612a8a3bdebbcd&auto=format&fit=crop&w=701&q=80'},
 {name: 'Music', img_url: 'https://images.unsplash.com/photo-1507838153414-b4b713384a76?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b5a23a8b4b953bdba8262a4cd98acf99&auto=format&fit=crop&w=1050&q=80'},
 {name: 'Technology', img_url: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=47d2b1f32cc05c976af4a39256e01cba&auto=format&fit=crop&w=1050&q=80'},
 {name: 'Design', img_url: 'https://images.unsplash.com/photo-1525896544042-354764aa27e6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bb22e6f49db10bc0c0c8efda661a1349&auto=format&fit=crop&w=634&q=80'}
])

Section.create([
  {title:'Beginning Painting', img_url: 'https://images.unsplash.com/photo-1499892298463-01d7f9832da5?ixlib=rb-0.3.5&s=02f3062a9f604ef6bd34ecd4c015c702&auto=format&fit=crop&w=1050&q=80', description: 'Students will learn the fundamentals of painting: materials and tools, paint handling, shape, value, basic color mixing, space and composition in this series of foundation classes. The sequence of courses runs the full academic year with a different emphasis each term, and provides a solid foundation for students interested in developing their perceptual and aesthetic skills. Fall term covers shape, value and planes in depth; winter emphasizes color; and spring is pictorial space and composition – although each are covered to different degrees in every term.', duration: '3hrs', category_id: 1, teacher_id: Member.find_by(id: 1).id, location: 'Washington, D.C.', price: '75.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome' },

  {title:'Weaving to Code, Coding to Weave', img_url: 'https://images.unsplash.com/photo-1490030077133-ef28f1f54752?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=80e7553fd7e8a4fb1da9e01f028bcbcf&auto=format&fit=crop&w=1050&q=80', description: 'Learn the history and basic practices of weaving as a way to understand the binary system and its importance in computer programming. Participants will take part in weaving and coding activities throughout three sessions that intertwine the relationship between craft and digital work.', duration: '3hrs', category_id: 4, teacher_id: Member.find_by(id: 1).id, location: 'Washington, D.C.', price: '60.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Clay Sculpture: Figurative Humanism', img_url: 'https://images.unsplash.com/photo-1488977678660-dca8681ca872?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cac085ad46e246605dd97f3b26ae7b69&auto=format&fit=crop&w=500&q=60', description: 'Crucially important for all artists, sculpture sharpens the visual skills essential to seeing and developing the three-dimensional aspects of human form. Through the sense of touch, students will understand masses in relation to each other and surrounding space, as well as the definition and direction of planes, leading to an understanding of gesture, weight, balance, rhythm, and the essential spirit of the pose. The ultimate goal is to develop a vocabulary and ability to connect form and feeling. Work will be from the figure model.', duration: '3hrs', category_id: 1, teacher_id: Member.find_by(id: 2).id, location: 'Washington, D.C.', price: '90.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome' },

  {title:'Learn To Sew', img_url: 'https://images.unsplash.com/photo-1534126511673-b6899657816a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjF9&s=314bb70e481c1ec82db2b60bb82593c3&auto=format&fit=crop&w=1050&q=80', description: 'Learn basic sewing skills, sewing machine & tool basics, sew seams & construct a simple pillow! Intended for adults & teens 15 & older. This class includes free sewing supplies (while they last).', duration: '3hrs', category_id: 2, teacher_id: Member.find_by(id: 3).id, location: 'Washington, D.C.', price: '50.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'HTML/CSS Crash Course!', img_url: 'https://images.unsplash.com/photo-1482745637430-91c0bbcea3e1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c0e1624bfa6a8a9937276964b2747ef7&auto=format&fit=crop&w=1050&q=80', description: 'All modern websites utilize HTML (the structures that support the web) and CSS (the language that makes the web look beautiful) as part of their site structure. We also introduce you to JavaScript, the programming language of the web. If you have any interest in editing, enhancing, or uploading information on the world wide web, this course will teach you how to do it.', duration: '3hrs', category_id: 4, teacher_id: Member.find_by(id: 4).id, location: 'Washington, D.C.', price: '120.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Introduction To Adobe Illustrator', img_url: 'https://images.unsplash.com/photo-1502404679462-d669245fc482?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3ef5d7093916f0ff49461a52fe234703&auto=format&fit=crop&w=1050&q=80', description: 'Bring your creative ideas to life with Adobe Illustrator, the industry-standard vector graphics software, used by designers and illustrators who want to create digital graphics, logos, illustrations, and original typography. This workshop is designed to get you up and running with Adobe Illustrator in just one day. The focus will be on step-by-step instruction leading students through the most important tools and concepts in Illustrator.', duration: '3hrs', category_id: 5, teacher_id: Member.find_by(id: 3).id, location: 'Washington, D.C.', price: '85.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Essential Music Theory', img_url: 'https://images.unsplash.com/photo-1488376739361-ed24c9beb6d0?ixlib=rb-0.3.5&s=7e45dd5732ae181f8264f91e6af10432&auto=format&fit=crop&w=1055&q=80', description: 'Many people believe it is hard to learn to read music. It isnt! In fact, reading music is a little like learning to read another language, but much easier than most languages to learn!. In fact, if you are reading this - you can learn how to read music with just a little effort.', duration: '3hrs', category_id: 3, teacher_id: Member.find_by(id: 4).id, location: 'Washington, D.C.', price: '60.00', materials_provided: 'Canvas, aprons, and paint brushes', materials_to_bring: 'Comfortable clothes', faqs: 'Children over 8 are welcome'},

  {title:'Make Your Own Zine!', img_url: 'https://images.unsplash.com/photo-1518185104790-b1d745526575?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1c54dd402d8abb7474b8158a1859afdb&auto=format&fit=crop&w=1050&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 5, teacher_id: Member.find_by(id: 4).id, location: 'Baltimore, MD', price: '20.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Tips for Sustainable Gardening', img_url: 'https://images.unsplash.com/photo-1526381508894-f68d6b837627?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bc638fbde1e031cfea1e5f6ed4ee01e7&auto=format&fit=crop&w=1034&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 4, teacher_id: Member.find_by(id: 2).id, location: 'Pittsburgh, PA', price: '70.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Screenprint Your Own Posters', img_url: 'https://images.unsplash.com/photo-1513785077084-84adb77e90ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=549d3a75bc9c928d3345351f500fd460&auto=format&fit=crop&w=1050&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 5, teacher_id: Member.find_by(id: 3).id, location: 'Baltimore, MD', price: '60.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Portfolio Review: Learn How to Edit Your Work', img_url: 'https://images.unsplash.com/photo-1516906736502-5d3fedc3019a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5c4f2d07f0ea75c788c3cf6d427eb7de&auto=format&fit=crop&w=1350&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 1, teacher_id: Member.find_by(id: 3).id, location: 'Baltimore, MD', price: '90.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Natural Fabric Dyeing Techniques', img_url: 'https://images.unsplash.com/photo-1513275384675-1b69ffeab427?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1879638885a5536f9ca5d12517c2beb2&auto=format&fit=crop&w=889&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 2, teacher_id: Member.find_by(id: 4).id, location: 'Baltimore, MD', price: '75.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Make a Beat: Produce a Rhythm', img_url: 'https://images.unsplash.com/photo-1517522628113-2a66a330a878?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9295016f1a7c18d9af79bad52b07de39&auto=format&fit=crop&w=1050&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 3, teacher_id: Member.find_by(id: 4).id, location: 'Baltimore, MD', price: '65.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Poetry as Medicine: A Workshop', img_url: 'https://images.unsplash.com/photo-1533271802434-53997a5f9e6c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3afa9e5eab0ce0e5de0f8d826259c40f&auto=format&fit=crop&w=1050&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '5hrs', category_id: 1, teacher_id: Member.find_by(id: 5).id, location: 'Pittsburgh, PA', price: '60.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'Radical Tech: Coding Tools for Community Organizing', img_url: 'https://images.unsplash.com/photo-1450609283058-0ec52fa7eac4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f5bc30dbed6b7f806e8c58a9de0c8d8c&auto=format&fit=crop&w=1050&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 1, teacher_id: Member.find_by(id: 5).id, location: 'Baltimore, MD', price: '10.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'},

  {title:'The Art of Seating: Make a Chair!', img_url: 'https://images.unsplash.com/photo-1537384901770-4dc15e7ae013?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7047a4ba49e37c523ccadf0982a518a8&auto=format&fit=crop&w=1350&q=80', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas. Proin suscipit tincidunt felis in placerat. Maecenas pellentesque sapien et lorem sagittis ullamcorper a in mi. Proin quis massa quis dui ultricies varius. Donec vitae felis ac est molestie scelerisque. Nulla vulputate magna quis justo malesuada bibendum. Morbi a pharetra lorem. Etiam faucibus efficitur magna, sed efficitur erat tempus pulvinar. Nullam sed metus tortor. Fusce in aliquet ante, id tincidunt justo. Nullam blandit neque nisl, laoreet placerat justo vehicula eu. Nulla hendrerit augue sit amet turpis faucibus aliquet. Aliquam a nulla elit.', duration: '3hrs', category_id: 5, teacher_id: Member.find_by(id: 2).id, location: 'Pittsburgh, PA', price: '150.00', materials_provided: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', materials_to_bring: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate lectus ut enim tincidunt dignissim. Maecenas ornare mauris justo, ut hendrerit arcu bibendum sed. Integer eu massa at nisi dictum egestas.', faqs: 'Children over 8 are welcome'}

  ])

Course.create([
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 1},
  {time: '2 hrs', title: 'Video 1', video_url: "https://youtu.be/FPoKiGQzbSQ", section_id: 1},
  {time: '3 hrs', title: 'Video 2', video_url: "https://youtu.be/9UvBX3REqSY", section_id: 1},
  {time: '1 hrs', title: 'Video 3', video_url: "https://youtu.be/FRkev5Aooms", section_id: 1},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 2},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 2},
  {time: '3 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 3},
  {time: '2 hrs', title: 'Video 1', video_url: "https://youtu.be/FPoKiGQzbSQ", section_id: 3},
  {time: '3 hrs', title: 'Video 2', video_url: "https://youtu.be/9UvBX3REqSY", section_id: 3},
  {time: '1 hrs', title: 'Video 3', video_url: "https://youtu.be/FRkev5Aooms", section_id: 3},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 4},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 5},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 6},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 7},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 8},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 8},
  {time: '3 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 9},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 9},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 10},
  {time: '3 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 10},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 11},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 11},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 12},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 12},
  {time: '3 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 12},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 13},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 13},
  {time: '3 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 14},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 14},
  {time: '2 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 15},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 15},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 15},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 16},
  {time: '1 hrs', title: 'Introduction', video_url: "https://youtu.be/hHcyJPTTn9w", section_id: 16}
  ])


zola_enrolled_in_sculpture = Enrolled.create(student_id: 1, section_id: 3)
izzie_enrolled_in_painting = Enrolled.create(student_id: 2, section_id: 1)



# painting_section = Enrolled.create(student_id: 2, section_id: 1, course_id: 1)
# painting_section = Enrolled.create(student_id: 3, section_id: 1, course_id: 1)
# painting_section = Enrolled.create(student_id: 4, section_id: 1, course_id: 1)
# painting_section = Enrolled.create(student_id: 5, section_id: 1, )
# weave_code_section = Enrolled.create(student_id: 4, section_id: 2)
# weave_code_section = Enrolled.create(student_id: 2, section_id: 2)
# weave_code_section = Enrolled.create(student_id: 3, section_id: 2)
# sculpture_section = Enrolled.create(student_id: 1, section_id: 3)
# sew_section = Enrolled.create(student_id: 2, section_id: 4)
# sew_section = Enrolled.create(student_id: 5, section_id: 4)
# html_section = Enrolled.create(student_id: 5, section_id: 5)
# html_section = Enrolled.create(student_id: 3, section_id: 5)
# adobe_section = Enrolled.create(student_id: 2, section_id: 6)
# adobe_section = Enrolled.create(student_id: 5, section_id: 6)
# music_section = Enrolled.create(student_id: 3, section_id: 7)
# music_section = Enrolled.create(student_id: 3, section_id: 7)
# zine_section = Enrolled.create(student_id: 3, section_id: 8)
# zine_section = Enrolled.create(student_id: 5, section_id: 8)
# garden_section = Enrolled.create(student_id: 4, section_id: 9)
# garden_section = Enrolled.create(student_id: 1, section_id: 9)
# screen_section = Enrolled.create(student_id: 2, section_id: 10)
# screen_section = Enrolled.create(student_id: 5, section_id: 10)
# portfolio_section = Enrolled.create(student_id: 1, section_id: 11)
# portfolio_section = Enrolled.create(student_id: 4, section_id: 11)
# fabric_section = Enrolled.create(student_id: 5, section_id: 12)
# fabric_section = Enrolled.create(student_id: 3, section_id: 12)
# beat_section = Enrolled.create(student_id: 2, section_id: 13)
# beat_section = Enrolled.create(student_id: 1, section_id: 13)
# poetry_section = Enrolled.create(student_id: 4, section_id: 14)
# poetry_section = Enrolled.create(student_id: 5, section_id: 14)
# radical_section = Enrolled.create(student_id: 2, section_id: 15)
# radical_section = Enrolled.create(student_id: 3, section_id: 15)
# chair_section = Enrolled.create(student_id: 1, section_id: 16)
# chair_section = Enrolled.create(student_id: 4, section_id: 16)
