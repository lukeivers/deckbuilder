class CardDatabaseCard < ActiveRecord::Base
  has_and_belongs_to_many :decks
  has_and_belongs_to_many :hands
end