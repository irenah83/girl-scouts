class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :name

      t.timestamps
    end
  end
end
