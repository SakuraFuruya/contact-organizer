class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :fullname
      t.integer :phone_number
      t.string :email


      t.timestamps
    end
  end
end
