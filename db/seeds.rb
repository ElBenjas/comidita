User.destroy_all
Picture.destroy_all

User.create!([
  {
    name: "Benjamin",
    email: "benjamin@benjamin.com",
    password: ""
  },

  {
    name: "Luis",
    email: "luis@luis.com",
    password: ""
  },

  {
    name: "Jorge",
    email: "jorge@jorge.com",
    password: ""
  },

  {
    name: "Armando",
    email: "armando@armando.com",
    password: ""
  },

  {
    name: "Juan",
    email: "juan@juan.com",
    password: ""
  },

  {
    name: "Pedro",
    email: "pedro@pedro.com",
    password: ""
  },

  {
    name: "David",
    email: "david@david.com",
    password: ""
  },

  {
    name: "Jorge",
    email: "jorge@jorge.com",
    password: ""
  },

  {
    name: "Ivan",
    email: "ivan@ivan.com",
    password: ""
  },

  {
    name: "Jesus",
    email: "jesus@jesus.com",
    password: ""
  },
  ])

  p "Created #{User.count} users."

start = User.first.id
final = User.last.id

captions = ['Yummi', 'Delicioso', 'Ya comieron, pobres?', 'Rico']
total_captions = captions.count

50.times do
  captions.shuffle!
  Picture.create(pic: "http://lorempixel.com/1200/800/food/", caption: "#{captions[total_captions - 1]}", user_id: rand(start..final))
end
