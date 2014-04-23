class SubwayManager
  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
  end

  def menu
    travel_plan = {}

    # # prompts (puts) and allow the user to enter information (gets)
    # puts "Enter the start station: " 
    # #travel_plan[:start_station] = gets.chomp
    # @start_station = gets.chomp    
    # puts "Enter the end station: " 
    # #travel_plan[:stop_station] = gets.chomp
    # @stop_station = gets.chomp

    # # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station
    

    # start_station = n.index(@start_station)


    # case @start_station
    # when n.include?(@start_station)
    #   @start_train = :n
    #   puts "n"
    # when l.include?(@start_station)
    #   @start_train = "l"
    #   puts "l"
    # when s.include?(@start_station)
    #   @start_train = "s"
    #   puts "s"
    # else
    #   @start_train = ""
    #   puts "no line found for your start station"
    # end
 
    # case @stop_station
    # when n.include?(@stop_station)
    #   @stop_train = ":n"
    #   puts "n"
    # when l.include?(@stop_station)
    #   @stop_train = "l"
    #   puts "l"
    # when s.include?(@stop_station)
    #   @stop_train = ":s"
    #   puts "s"
    # else
    #   @stop_train = ""
    #   puts "no line found for your stop station"
    # end
 

    travel_plan = {
      :start_station => "ts",
      :start_train => "n",
      :stop_station => "23rd-n",
      :stop_train => "n"
    }
    
    return travel_plan
  end

 # def travel_distance(travel_plan)
 def travel_distance

    # Calculate the total_length_of_trip here!
    start_train = :n
    stations = []
    stations = @network[start_train]

    start_station = "23rd-n"
    stop_station = "ts"
    #start_station = "ts"
    #stop_station = "23rd-n"
    #stop_station = "us"
    index_start = stations.index(start_station)
    index_stop = stations.index(stop_station)

    total_length_of_trip = index_start + index_stop

    # puts travel_plan[:start_train].index[travel_plan[start_station]]   

    return total_length_of_trip
  end

  def help
    travel_plan = menu
   # total_length_of_trip = travel_distance(travel_plan)
   total_length_of_trip = travel_distance
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end


plan = SubwayManager.new 
plan.travel_distance
