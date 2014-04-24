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
    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for
    # :start_train, :start_station, :stop_train, :stop_station
    
    travel_plan = {}

    puts "what train do you take first?"
    travel_plan[:start_train] = gets.chomp.to_sym

    puts "what station do you start at?"
    travel_plan[:start_station] = gets.chomp.to_sym

    puts "what train do you take last?"
    travel_plan[:end_train] = gets.chomp.to_sym

    puts "what station do you get off?"
    travel_plan[:end_station] = gets.chomp.to_sym

    return travel_plan

  end

  def travel_distance(travel_plan)
      # Calculate the total_length_of_trip here!
      if travel_plan[:start_train] == travel_plan[:end_train]
        train = travel_plan[:start_train]
        start_pos = @network[train].index(travel_plan[:start_station])
        end_pos = @network[train].index(travel_plan[:end_station])
        total_length_of_trip = (end_pos - start_pos).abs
      else
        train_1 = travel_plan[:start_train]
        train_2 = travel_plan[:end_train]
        start_pos = @network[train].index(travel_plan[:start_station])
        end_pos = @network[train].index(travel_plan[:end_station])
        total_length_of_trip = (start_pos - us).abs + (us - end_pos).abs
      end
    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
