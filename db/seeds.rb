User.destroy_all
Picture.destroy_all

20.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

start = User.first.id
final = User.last.id

captions = ['Yummi', 'Delicioso', 'Ya comieron, pobres?', 'Rico']
total_captions = captions.count

50.times do
  captions.shuffle!
  Picture.create(pic: "http://lorempixel.com/1200/800/food/", caption: "#{captions[total_captions - 1]}", user_id: rand(start..final))
end

p "Created #{User.count} users."
p "Created #{Picture.count} pictures."
