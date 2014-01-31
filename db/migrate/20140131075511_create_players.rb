class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :game, index: true
      t.text :hand
      t.text :deck

      t.timestamps
    end
  end
end
