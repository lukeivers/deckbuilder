class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player1, index: true
      t.references :player2, index: true
      t.references :current_player, index: true

      t.timestamps
    end
  end
end
