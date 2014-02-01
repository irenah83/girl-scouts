class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :leader_id
      t.integer :organization_id
      t.string :meeting_time

      t.timestamps
    end
  end
end
