class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :birth_date
      t.string :email

      t.timestamps
    end
  end
end
