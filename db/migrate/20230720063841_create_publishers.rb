class CreatePublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :publishers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gander
      t.string :string
      t.string :country
      t.string :city
      t.string :address
      t.date :dob
      t.integer :age

      t.timestamps
    end
  end
end
