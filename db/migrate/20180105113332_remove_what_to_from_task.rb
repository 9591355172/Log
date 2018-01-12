class RemoveWhatToFromTask < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :what_to_do, :sting
  end
end
