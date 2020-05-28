class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def self.say_something         #class method
    puts "haha"
  end

  def log_something wat          #instance method
    @f.puts wat
  end
end

Logger.say_something            #вызов для class method

logger = Logger.new             #вызов для instance method
logger.log_something 'hey!'
