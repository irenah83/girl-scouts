class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :speciality_id

      t.timestamps
    end
  end
end
