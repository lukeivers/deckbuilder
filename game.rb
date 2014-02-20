class Game
  attr_accessor :events

  def initialize
    @events = Hash.new
  end

  def add_hook(event_type, hooker)
    @events[event_type] ||= Array.new
    @events[event_type] << hooker
  end

  def cause_event(event_type, source)
    @events[event_type] ||= Array.new
    @events[event_type].each do |hooker|
      hooker.receive_event(event_type, source)
    end
  end

  def remove_hook(event_type, hooker)
    @events[event_type].delete hooker
  end
end