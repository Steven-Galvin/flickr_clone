class AddInfoToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :name
      t.datetime :dob
      t.string :sex
    end
  end
end
