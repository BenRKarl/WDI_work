class SubwayManager
  attr_accessor:network, :travel_plan
  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
    @travel_plan = {}
  
  end
    #@travel_plan = {}


  def menu
    travel_plan = {}
  puts "MTA map: #{@network}"
 
  puts "which station start?"
    start_station = gets.chomp
    travel_plan[:start_station]= start_station
    
    if start_station != 'us'
      puts "which line is that on?" 
      start_train = gets.chomp
      travel_plan[:start_train]= start_train
    else
      "ok, from union sq."
      start_train = 'us'
      travel_plan[:start_train]= start_train
    end

  puts "which station dest?"
    stop_station = gets.chomp
    travel_plan[:stop_station] = stop_station 
    

  puts "which line is that on?" 

      stop_train = gets.chomp
      if start_station == 'us'
        stop_train, travel_plan[:stop_train] = start_train
      else
      travel_plan[:stop_train] = stop_train
      end
      
    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station
    @travel_plan = travel_plan
    return travel_plan

  end

  def travel_distance(travel_plan)
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
  #{:start_station=>"ts", :start_train=>"n", :stop_station=>"34th", :stop_train=>"n"}
# Calculate the total_length_of_trip here!
    #start_t = @travel_plan[:start_train]
    #stop_t = @travel_plan[:stop_train] 
    #start_s =  @travel_plan[:start_station]
    #stop_s = @travel_plan[:stop_station]

    if travel_plan[:start_train] == travel_plan[:stop_train]
      total_length_of_trip = (((@network[travel_plan[:start_train].to_sym]).index(travel_plan[:start_station])) - ((@network[travel_plan[:stop_train].to_sym]).index(travel_plan[:stop_station]))).abs
    else
      puts 'beta'
      total_length_of_trip = (((@network[travel_plan[:start_train].to_sym]).index(travel_plan[:start_station])) - ((@network[travel_plan[:start_train].to_sym]).index('us'))).abs + (((@network[travel_plan[:stop_train].to_sym]).index(travel_plan[:stop_station])) - ((@network[travel_plan[:stop_train].to_sym]).index('us'))).abs
    end
    puts n

    #suggested (@network[travel_plan[:start_train]].index[:start_station] - @network[:stop_train].index[:stop_station]).abs
    
    puts "go these many stops"
    #puts total_length_of_trip
    puts total_length_of_trip

    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    #puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
map = SubwayManager.new
map.travel_distance(map.menu)