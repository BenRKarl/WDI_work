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
    puts "start_station"
    travel_plan[:start_station] = gets.chomp
    puts "start_train"
    travel_plan[:start_train] = gets.chomp
    puts "end_station"
    travel_plan[:end_station] = gets.chomp
    puts "end_train"
    travel_plan[:end_train] = gets.chomp
    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station
    return travel_plan
  end
    # need travel_plan hash created in menu to apply to travel_distance
  def travel_distance(travel_plan)
      # travel_plan = menu
      # total_length_of_trip = index value of :start_station - index value of :end_station
      # n = @network[:start_train]
      n = ['ts', '34th', '28th-n', '23rd-n', 'us']
      # total_length_of_trip = n.index(travel_plan[":start_station"]) - n.index[":end_station"]
      total_length_of_trip = (n.index(travel_plan[:start_station]).to_i - n.index(travel_plan[:end_station]).to_i).abs

      # total_length_of_trip = n.index('ts') - n.index('us')
    # return total_length_of_trip.abs
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stop(s).\n\n"
  end
end
