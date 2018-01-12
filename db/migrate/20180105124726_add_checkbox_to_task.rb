class AddCheckboxToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :checkbox, :boolean
  end
end
