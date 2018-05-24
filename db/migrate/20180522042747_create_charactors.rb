class CreateCharactors < ActiveRecord::Migration[5.2]
  def change
    create_table :charactors do |t|
      t.string :name
      t.integer :clan_id
      t.integer :occupation_id
      t.integer :fighting_power
      t.integer :user_id

      t.timestamps
    end
  end
end
