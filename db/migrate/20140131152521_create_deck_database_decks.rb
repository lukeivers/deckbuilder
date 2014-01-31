class CreateDeckDatabaseDecks < ActiveRecord::Migration
  def change
    create_table :deck_database_decks do |t|
      t.string :name
      t.references :hclass, index: true

      t.timestamps
    end
  end
end
