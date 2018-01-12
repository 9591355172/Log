class AddWhatDoneToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :what_done, :text
  end
end
