class Player < ActiveRecord::Base
  belongs_to :hclass
  belongs_to :deck
end
