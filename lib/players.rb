require './player'
Dir["./players/*.rb"].each { |file| require file }

class Players
  @players = [
      SimpleBot.new,
      RandomBot.new,
  ]
  def self.get(opts = {})
    player = @players.find {|bot| bot.name == opts[:name]}
    player.dup
  end
end