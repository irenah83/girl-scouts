class CreateHolders < ActiveRecord::Migration
  def change
    create_table :holders do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :country
    end
  end
end
