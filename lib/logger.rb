class Logger
  def self.debug
    false
  end
  def self.log(text)
    puts text if self.debug
  end
end