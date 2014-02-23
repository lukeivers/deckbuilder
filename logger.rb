class Logger
  def self.debug
	  true
  end
  def self.log(text)
    puts text if self.debug
  end
end
