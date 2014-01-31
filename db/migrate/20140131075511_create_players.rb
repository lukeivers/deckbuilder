class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :hclass, index: true
      t.references :deck, index: true

      t.timestamps
    end
  end
end
