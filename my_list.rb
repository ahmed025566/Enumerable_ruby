class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def each
    index = 0
    while index < @list.length
      yield(@list[index]) if block_given?
      index += 1
    end
  end
end
