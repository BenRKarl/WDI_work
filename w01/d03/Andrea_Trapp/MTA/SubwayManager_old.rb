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
    puts "Enter the start station:" 
    start_station = gets.chomp

    puts "Enter the stop station:" 
    stop_station = gets.chomp

    start_train = ""
    stop_train = ""

    if start_station == "us"
      #then check stop_station and take that line for both stations
      @network.each { |line, stations| start_train = line if stations.include?(stop_station) }  
      stop_train = start_train  
    else
      #check every array (n,l,s), if it includes the start_station
      @network.each { |line, stations| start_train = line if stations.include?(start_station) }  
    end
  
    if stop_train == ""
      #check every array (n,l,s), if it includes the stop_station      
      @network.each { |line, stations| stop_train = line if stations.include?(stop_station) }
    end
  
    travel_plan[:start_station] = start_station
    travel_plan[:stop_station] = stop_station
    travel_plan[:start_train] = start_train
    travel_plan[:stop_train] = stop_train

    # puts "start_station: #{travel_plan[:start_station]}"
    # puts "stop_station: #{travel_plan[:stop_station]}"
    # puts "start_train: #{travel_plan[:start_train]}"
    # puts "stop_train: #{travel_plan[:stop_train]}"
    
    return travel_plan
  end

 def travel_distance(travel_plan)
 
    start_station = travel_plan[:start_station]
    stop_station = travel_plan[:stop_station]
    start_train = travel_plan[:start_train]
    stop_train = travel_plan[:stop_train]

    stations = []

    stations_start_train = @network[start_train.to_sym]
    #puts "stations start_train: #{stations_start_train}"

    stations_stop_train = @network[stop_train.to_sym]
    #puts "stations stop_train: #{stations_stop_train}"

    index_start_train_start = stations_start_train.index(start_station)
    index_start_train_stop = stations_start_train.index("us")

    index_stop_train_start = stations_stop_train.index("us")
    index_stop_train_stop = stations_stop_train.index(stop_station)

    start_train_length_of_trip = (index_start_train_start - index_start_train_stop).abs
    stop_train_length_of_trip = (index_stop_train_start - index_stop_train_stop).abs

    total_length_of_trip = start_train_length_of_trip + stop_train_length_of_trip
  
    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)  
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

plan = SubwayManager.new 
plan.help
