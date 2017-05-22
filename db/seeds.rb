# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(title: "My Topic #{topic}")
end  
puts "3 topics created"
  
10.times do |blog|
  Blog.create!(title: "My blog post #{blog}", body: "Loving JavaScript
We’ve had a stormy, perhaps even contentious, relationship with JavaScript over the years. But that time is past. JavaScript has improved immensely over the past few years, particularly with the advent of ES6, and with package and compilation tools like Yarn and webpack. Rails is embracing both of these solutions with open arms and letting whatever past water flow under the bridge.
JavaScript and Ruby share a deep philosophical bond over language design, if not ecosystem management. Let’s focus on the aspects we have in common and help Rails programmers extract the best from JavaScript with the help of some key guiding conventions.",
topic_id: Topic.last.id
)
end
puts "10 blogs created"

5.times do |skills|
  Skill.create!(title: "My skill #{skills}", percent_utilized: 15)
end
puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Action Mailer is modeled on Action Controller. It shares underpinnings through Abstract Controller, but it’s long been disadvantaged from its controller cousin in the way it can share logic between actions.", 
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200"
    )
  end
  puts "8 portfolio items created"
  
  1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "Action Mailer is modeled on Action Controller. It shares underpinnings through Abstract Controller, but it’s long been disadvantaged from its controller cousin in the way it can share logic between actions.", 
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200"
    )
  end
  puts "1 portfolio items created"
  
  3.times do |technology|
    #different way of creating a child item
    Portfolio.last.technologies.create!(name: "Technology #{technology}")
  end
  puts "3 technologies created"
  