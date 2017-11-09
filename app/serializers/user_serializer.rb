class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :pictures

  def pictures
    object.pictures.order(created_at: :desc)
  end
  # has_many :pictures
end
#
# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.string "email"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
