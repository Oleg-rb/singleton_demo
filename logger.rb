require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log_something wat         #instance method
    @f.puts wat
    @f.flush                    #все изминения будут сброшены на диск
  end
end
