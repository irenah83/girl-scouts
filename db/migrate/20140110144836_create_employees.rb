class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :password
      t.string :experience
      t.string :email
    end
  end
end
