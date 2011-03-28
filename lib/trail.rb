class Trail
  
  def initialize
    @queue = []

    @watch = nil
    @commit = nil
    @normalize = nil
  end
  
  def normalize=(v)
    @normalize = v
  end
  
  def commit=(v)
    @commit = v
  end
  
  def watch=(v)
    @watch = v
  end
  
  def push(v)
    @queue.push(v)
    @queue = @watch.call(v) unless @watch.nil?
    v
  end
  
  def commit!
    @queue = @normalize.call(@queue) unless @normalize.nil?
    @commit.nil? ? @queue : @commit.call(@queue)
  end
end
