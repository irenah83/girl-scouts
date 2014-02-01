class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :member_since
      t.integer :leader_id
      t.integer :chapter_id

      t.timestamps
    end
  end
end
