class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :industry
      t.string :address

      t.timestamps
    end
  end
end
