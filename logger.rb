class Logger
  def self.debug=(value)
    @debug = value
  end
  def self.debug
	  @debug
  end
  def self.log(text)
    puts text if self.debug
  end
end
