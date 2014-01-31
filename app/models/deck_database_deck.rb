class DeckDatabaseDeck < ActiveRecord::Base
  belongs_to :hclass
  has_and_belongs_to_many :cards
end
