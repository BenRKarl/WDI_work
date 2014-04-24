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
    puts "I'm going to ask you questions about your travel plans?"
    puts "What is your starting train?"
    starting_train = gets.chomp
    puts "What is your starting station?"
    starting_station = gets.chomp
    puts "What is your last train?"
    stop_train = gets.chomp
    puts "what is your last station?"
    stop_station = gets.chomp
    
    travel_plan.start_train.join
    travel_plan.start_station.join
    travel_plan.stop_train.join
    travel_plan.stop_station

    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station

    return travel_plan
  end

  def travel_distance(travel_plan)

    # Calculate the total_length_of_trip here!

    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
