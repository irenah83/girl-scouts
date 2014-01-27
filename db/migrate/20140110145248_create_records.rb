class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.datetime :date
    end
  end
end
