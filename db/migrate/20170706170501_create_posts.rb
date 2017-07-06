class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.attachment :picture
      t.string :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
