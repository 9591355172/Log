class RemoveTimingsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :timings, :text
  end
end
