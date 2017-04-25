class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :pitcher
      t.integer :inning_pitch
      t.integer :pref_pos
      t.integer :avoid_pos

      t.timestamps
    end
  end
end
