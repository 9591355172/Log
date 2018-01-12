class AddWhatToDoToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :what_to_do, :text
  end
end
