class AddDateToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :date, :text
  end
end
