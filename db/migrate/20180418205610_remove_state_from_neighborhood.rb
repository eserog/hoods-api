class RemoveStateFromNeighborhood < ActiveRecord::Migration[5.1]
  def change
  	remove_column :neighborhoods, :state
  end
end
