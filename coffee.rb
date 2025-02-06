class Coffee
  attr_reader :type, :size
  
  def initialize(type, size)
    @type = type
    @size = size
  end
  
  def description
    "#{size} #{type.capitalize}"
  end
end
