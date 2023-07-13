class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :country
      t.string :city
      t.string :address_line_1
      t.string :pincode
      t.integer :age

      t.timestamps
    end
  end
end
