class AddTimingsEndToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :timings_end, :'time without time zone'
  end
end
