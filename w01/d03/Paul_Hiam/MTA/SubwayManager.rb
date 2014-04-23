class SubwayManager
  attr_accessor:network
  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
  end
    @travel_plan = {}

    
  def menu
    travel_plan = {}
  puts "MTA map: #{@network}"

  puts "which station start?"
    travel_plan[:start_station] = gets.chomp.to_s
 
    if travel_plan[:start_station] != 'us'
      puts "which line is that on?" 
      travel_plan[:start_train] = gets.chomp.to_s
    else
      travel_plan[:start_train] = ' '
    end

  puts "which station stop?"
    travel_plan[:stop_station] = gets.chomp.to_s
  puts "which line is that on?" 
      travel_plan[:stop_train] = gets.chomp.to_s
    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station
    puts travel_plan
    
    return travel_plan
  end

  def travel_distance(travel_plan)
    #n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    #l = ['8th', '6th', 'us', '3rd', '1st']
    #s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

    total_length_of_trip = 0
    # Calculate the total_length_of_trip here!

    if travel_plan[:start_train] == travel_plan[:stop_train]
      #total_length_of_trip = travel_plan[:start_station].to_s
      puts "one line trip"
    else  
    puts 'BEta'  
    end
#
    #return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    #puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
map = SubwayManager.new
map.travel_distance(map.menu)