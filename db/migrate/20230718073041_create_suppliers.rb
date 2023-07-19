class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
       t.string :company_name
       t.string :contact_fn
       t.string :contact_ln
       t.string :contact_title
       t.string :address1
       t.string :address2
       t.string :city
       t.string :state
       t.string :country
       t.string :phone
       t.string :fax
       t.string :email
       t.string :url
       t.string :pay_methods
       t.string :discount_type
       t.string :types_goods
       t.string :notes
       t.integer :discount_available
       t.integer :postal_code

      t.timestamps
    end
  end
end
