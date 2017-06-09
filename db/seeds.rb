# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Schools.destroy_all
Posts.destroy_all
Comments.destroy_all

osu = School.create(name:"The Ohio State University", city: "Columbus", state: "Ohio", url:"www.osu.edu", img_url: "https://media.glassdoor.com/sqll/2923/ohio-state-university-squarelogo.png")
onu = School.create(name:"Ohio Northern University", city: "Ada", state: "Ohio", url: "www.onu.edu" img_url:"http://images.collegexpress.com/wg_school/2800108_logo.jpg")
virginia = School.create(name:"The University of Virginia", city: "Charlottesville", state: "Virginia", url:"www.virginia.edu", img_url: "https://upload.wikimedia.org/wikipedia/commons/8/84/Uva-logo.png")
virginia_tech = School.create(name:"Virginia Tech", city: "Blacksburg", state: "Virginia", url: "www.vt.edu" img_url:"https://www.branding.unirel.vt.edu/content/branding_unirel_vt_edu/en/trademarks/index/_jcr_content/content/vtmulticolumn/vt-items_1/adaptiveimage.img.640.low.jpg/1461257556919.jpg")

the_shoe = Post.create(title:"Football Saturday", author: "Urban Meyer", content: "Ohio State football is the best and that's all there is to it.", school: osu)
the_osu = Post.create(title:"The", author: "Danielle Fricke", content: "Yes, we use 'The' because we are the first to use it!", school: osu)

original = Comment.create(commentor:"Woody Hayes", text: "I invented 'The'.", post: the)
original2 = Comment.create(commentor:"Archie Griffin", text: "Coach is awesome!", post: the)
