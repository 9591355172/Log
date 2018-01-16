class RemoveTimingsFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :timings, :json
  end
end
