class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :goal_id
      t.string :goal_type
      t.string :name
      t.text :instructions

      t.timestamps
    end
  end
end
