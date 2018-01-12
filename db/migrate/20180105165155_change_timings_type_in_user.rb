class ChangeTimingsTypeInUser < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :timings, :json
  end
end
