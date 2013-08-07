ActiveRecord::Schema.define(version: 20130805205837) do
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
