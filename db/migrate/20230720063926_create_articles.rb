class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :act_header
      t.string :act_body
      t.string :act_type
      t.date :publish_date
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
