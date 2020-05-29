class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = Logger.new

  def self.instance             #метод Singleton обычно использует в названии слово "instance"
    return @@x
  end

  def log_something wat         #instance method
    @f.puts wat
  end

  private_class_method :new     # метод new может вызываться только внутри класса, а не из вне
end
