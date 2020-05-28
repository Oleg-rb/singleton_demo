class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

@@x = nil

  def self.instance             #метод Singleton обычно использует в названии слово "instance"
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  def self.say_something        #class method
    puts "haha"
  end

  def log_something wat         #instance method
    @f.puts wat
  end
end

Logger.say_something            #вызов для class method
Logger.instance.log_something 'blabla'
Logger.instance.log_something 'blabla2'

logger = Logger.new             #вызов для instance method
logger.log_something 'hey!'
