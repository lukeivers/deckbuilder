class Hand < Array
  def to_s
    result = "Cards: ["
    self.each do |card|
      result += "#{card.name} - #{card.cost}"
      if card != self.last
        result += ", "
      end
    end
    result += "]"
  end
end