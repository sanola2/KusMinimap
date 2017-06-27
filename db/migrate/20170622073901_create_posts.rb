class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|

      t.string "title"
      t.string "date"
      t.float "xxx"
      t.float "yyy"

      t.timestamps
    end
  end
end
