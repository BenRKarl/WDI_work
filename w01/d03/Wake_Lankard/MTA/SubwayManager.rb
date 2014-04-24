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

    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station
    invalid_entry = true
    while invalid_entry
      print "Starting line (N, L, or S): "
      travel_plan[:start_train] = gets.chomp.downcase
      line_key = travel_plan[:start_train].intern
      if @network[line_key].nil?
        puts "Invalid entry."
      else
        invalid_entry = false
      end
    end

    invalid_entry = true
    while invalid_entry
      print "Starting station ("
      @network[line_key].each { |n| print n + " "}
      print "): "
      travel_plan[:start_station] = gets.chomp
      if !(@network[line_key].include?(travel_plan[:start_station]))
        puts "Invalid entry."
      else
        invalid_entry = false
      end
    end
    
    invalid_entry = true
    while invalid_entry
      print "Ending line (N, L, or S): "
      travel_plan[:stop_train] = gets.chomp.downcase
      line_key = travel_plan[:stop_train].intern
      if @network[line_key].nil?
        puts "Invalid entry."
      else
        invalid_entry = false
      end
    end


     invalid_entry = true
    while invalid_entry
      print "Ending station ("
      @network[line_key].each { |n| print n + " "}
      print "): "
      travel_plan[:stop_station] = gets.chomp
      if !(@network[line_key].include?(travel_plan[:stop_station]))
        puts "Invalid entry."
      else
        invalid_entry = false
      end
    end

    return travel_plan
  end

  def travel_distance(travel_plan)

    # Calculate the total_length_of_trip here!
    if travel_plan[:start_train] == travel_plan[:stop_train]
      total_length_of_trip = get_distance(travel_plan[:stop_train], travel_plan[:start_station], travel_plan[:stop_station])
    else
      distance1 = get_distance(travel_plan[:start_train], travel_plan[:start_station], "us")
      distance2 = get_distance(travel_plan[:stop_train], travel_plan[:stop_station], "us")
      total_length_of_trip = distance1 + distance2


    end
    

    return total_length_of_trip
  end

  def get_distance (line, station1, station2)
    distance = (@network[line.intern].index(station1) - @network[line.intern].index(station2)).abs
    return distance
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end




my_manager = SubwayManager.new 
my_manager.help

