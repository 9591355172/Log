class AddTimingsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :timings, :json
  end
end
