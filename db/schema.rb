ActiveRecord::Schema[7.1].define(version: 2024_06_13_161043) do
  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.integer "stock_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
