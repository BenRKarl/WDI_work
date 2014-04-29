class Building
  def initialize(address, style, num_floors, is_walkup, num_floors, apartments)
    @address     = address      #string
    @style       = style        #string
    @num_floors  = num_floors   #integer
    # @has_doorman = has_doorman  #boolean
    # @is_walkup   = is_walkup    #boolean
    @apartments  = []   #array of apartment objects?
  end
  attr_accessor :address, :num_floors, :style, :num_floors, :apartments

  def to_s
    puts "Welcome to the #{@address} address. It's a #{@style} building, with #{@numfloors} floors"
      if @has_doorman == true && @is_walkup == true
        puts "This building has a door man and is a walk-up."
      elsif @has_doorman == true && @is_walkup == false
        puts "This building has a door man and is not a walk-up."
      elsif @has_doorman == false && @is_walkup == false
        puts "This building does not have a door man and is not a walk-up."
      else
        puts "This building does not have a door man and is a walk-up."
      end



  end

end
