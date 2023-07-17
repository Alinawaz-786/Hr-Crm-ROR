class AddColumnsAttrsOfGanderToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :gander, :text
  end
end
