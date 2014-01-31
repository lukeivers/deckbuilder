class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player1
      t.references :player2
      t.references :current_player

      t.timestamps
    end
  end
end
