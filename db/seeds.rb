# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.destroy_all
Post.destroy_all
Comment.destroy_all

osu = School.create(name:"The Ohio State University", city: "Columbus", state: "Ohio", url:"www.osu.edu", img_url: "https://media.glassdoor.com/sqll/2923/ohio-state-university-squarelogo.png")
onu = School.create(name:"Ohio Northern University", city: "Ada", state: "Ohio", url: "www.onu.edu", img_url: "http://images.collegexpress.com/wg_school/2800108_logo.jpg")
virginia = School.create(name:"The University of Virginia", city: "Charlottesville", state: "Virginia", url:"www.virginia.edu", img_url: "https://upload.wikimedia.org/wikipedia/commons/8/84/Uva-logo.png")
indiana = School.create(name:"Indiana University", city: "Bloomington", state: "Indiana", url: "www.iu.edu", img_url: "https://www.indiana.edu/images/iu-250x250.png")
illinois = School.create(name:"The University of Illinois", city: "Champaign", state: "Illinois", url: "www.illinois.edu", img_url: "https://s-media-cache-ak0.pinimg.com/originals/be/0f/51/be0f51943f4ee0400b150ef2f3b9cb9e.jpg")
penn_state = School.create(name:"Penn State University", city: "State colleg", state: "Pennsylvania", url: "www.psu.edu", img_url: "http://sites.psu.edu/kaitlyndieter/wp-content/uploads/sites/20923/2014/12/penn-state-athletics-logo.jpg")
virginia_tech = Svirginia_tech = School.create(name:"Virginia Tech", city: "Blacksburg", state: "Virginia", url: "www.vt.edu", img_url: "https://www.branding.unirel.vt.edu/content/branding_unirel_vt_edu/en/trademarks/index/_jcr_content/content/vtmulticolumn/vt-items_1/adaptiveimage.img.640.low.jpg/1461257556919.jpg")
xavier = School.create(name:"Xavier", city: "Cincinnati", state: "Ohio", url: "www.xavier.edu", img_url: "http://logonoid.com/images/xavier-university-logo.png")





#
# theshoe = Post.create(title:"Football Saturday", author: "Urban Meyer", content: "Ohio State football is the best and that's all there is to it.", school: osu)
# theosu = Post.create(title: "The", author: "Danielle Fricke", content: "Yes, we use 'The' because we are the first to use it!", school: osu)
#
# original = Comment.create(commentor:"Woody Hayes", text: "I invented 'The'.", post: theshoe)
# original2 = Comment.create(commentor:"Archie Griffin", text: "Coach is awesome!", post: theosu)
