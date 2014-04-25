class Building
  def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
    @address     = address      #string
    @style       = style        #string
    @has_doorman = has_doorman  #boolean
    @is_walkup   = is_walkup    #boolean
    @num_floors  = num_floors   #integer
    @apartments  = []   #array of apartment objects?
  end
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

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
