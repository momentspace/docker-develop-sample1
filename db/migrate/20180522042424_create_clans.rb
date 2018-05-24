class CreateClans < ActiveRecord::Migration[5.2]
  def change
    create_table :clans do |t|
      t.string :name
      t.integer :server_id
      t.integer :leader_id

      t.timestamps
    end
  end
end
