# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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


  #
  # create_table "users", force: :cascade do |t|
  #   t.string "name"
  #   t.string "emaill"
  #   t.string "password"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
inicio = User.first.id
final = User.last.id

captions = ['Yummi', 'Delicioso', 'Ya comieron, pobres?', 'Rico']
total_captions = captions.count

50.times do
  captions.shuffle!
  Picture.create(pic: "http://lorempixel.com/1200/800/food/", caption: "#{captions[total_captions - 1]}", user_id: rand(inicio..final))
end

#
# create_table "pictures", force: :cascade do |t|
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "pic"
#   t.string "caption"
#   t.bigint "user_id"
#   t.index ["user_id"], name: "index_pictures_on_user_id"
# end
