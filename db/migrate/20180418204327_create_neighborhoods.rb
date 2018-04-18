class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :state
      t.string :borough
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
