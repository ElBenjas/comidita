class PictureSerializer < ActiveModel::Serializer
  attributes :id, :pic, :caption, :user_id
end


# create_table "pictures", force: :cascade do |t|
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "pic"
#   t.string "caption"
#   t.bigint "user_id"
#   t.index ["user_id"], name: "index_pictures_on_user_id"
# end
