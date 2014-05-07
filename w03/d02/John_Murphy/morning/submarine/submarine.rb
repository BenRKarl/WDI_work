class Sailor
attr_accessor :name

  def initialize (name)
      @name = name
  end

end


class Submarine
attr_accessor :sailors

  def initialize (color='yellow')
    @color = color
    @sailors = []
  end

  def accept_sailor(sailor)
    @sailors << sailor
  end

  def torpedo_sailor(sailor)
    byebye = @sailors.sample
    @sailors.delete(byebye)

  end


end
