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
    puts "Here's your choices"
    puts "'ts', '34th', '28th-n', '23rd-n', 'us'"
    puts "'8th', '6th', 'us', '3rd', '1st'"
    puts "'gc', '33rd', '28th-s', '23rd-s', 'us'"
    puts ""
    puts "What station are you catching the train at?"
    travel_plan[:start_station] = gets.chomp
    travel_plan[:start_train] = train_line(travel_plan[:start_station]).to_sym
    puts "Okay that is on the #{travel_plan[:start_train]} train."
    puts "What station are you getting off on?"
    travel_plan[:stop_station] = gets.chomp
    travel_plan[:stop_train] = train_line(travel_plan[:stop_station]).to_sym
    puts "Okay that is on the #{travel_plan[:stop_train]} train."

    return travel_plan
  end

  def train_line (station)
    case station
    when 'ts', '34th', '28th-n', '23rd-n', 'us'
      train = 'n'
    when '8th', '6th', 'us', '3rd', '1st'
      train = 'l'
    when 'gc', '33rd', '28th-s', '23rd-s', 'us'
      train = 's'
    #else
      #train = "That's not an option."
    end

    return train
  end


  def travel_distance(travel_plan)
    # Calculate the total_length_of_trip here!
    # Check to see if trip starts or stops at the junction. If yes, then only calculate the distance from start_station to 'us'
    if travel_plan[:start_station] == 'us' || travel_plan[:stop_station] == 'us'
      total_length_of_trip = (@network[travel_plan[:start_train]].index(travel_plan[:start_station]) - @network[travel_plan[:start_train]].index('us')).abs
    #Check if stations are on the same line.
    elsif travel_plan[:start_train] == travel_plan[:stop_train]
      total_length_of_trip = (@network[travel_plan[:start_train]].index(travel_plan[:start_station]) - @network[travel_plan[:start_train]].index(travel_plan[:stop_station])).abs
    else
      #This doosy plugs the values of the travel_plan key into the init hash to get the index values and then uses .abs to calculate the difference.
      first_leg = (@network[travel_plan[:start_train]].index(travel_plan[:start_station]) - @network[travel_plan[:start_train]].index('us')).abs
      second_leg = (@network[travel_plan[:stop_train]].index(travel_plan[:stop_station]) - @network[travel_plan[:stop_train]].index('us')).abs
      total_length_of_trip = first_leg + second_leg
    end


    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end

end

