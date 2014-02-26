class Logger
  def self.debug=(value)
    @debug = value
  end
  def self.debug
	  @debug
  end
  def self.timers=(value)
    @timers = value
  end
  def self.timers
    @timers
  end
  def self.log(text, channel='default')
    if channel == 'default' and debug
      puts text
    elsif channel == 'timer' and timers
      puts text
    end
  end
end
