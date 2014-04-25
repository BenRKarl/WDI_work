class SubwayManager
  def initialize()
    @network = {}
    @network[:n] = ['ts', '34th', '28th-n', '23rd-n', 'us']
    @network[:l] = ['8th', '6th', 'us', '3rd', '1st']
    @network[:s] = ['gc', '33rd', '28th-s', '23rd-s', 'us']
  end
  #SubwayManager just creates an object that is a Hash with all the lines as keys and associated stops as values.

  def menu
    travel_plan = {}

    print "What train are you starting on? (n, l or s): "
    travel_plan[:start_train] = gets.chomp

    puts "At which station are you starting your trip?"
    print "Choose one of the following #{@network[travel_plan[:start_train].to_sym]}: "
    travel_plan[:start_station] = gets.chomp

    print "Which train will you end your trip on? (n, l or s): "
    travel_plan[:stop_train] = gets.chomp

    puts "At which stop will you end?"
    print "Choose one of the following #{@network[travel_plan[:stop_train].to_sym]}: "
    travel_plan[:stop_station] = gets.chomp

    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station

    return travel_plan
  end
  #travel_plan = {:start_train=>"INPUT", :start_station=>"INPUT", :stop_train=>"INPUT", :stop_station=>"INPUT"}


  def travel_distance(travel_plan)
    start_index = @network[travel_plan[:start_train].to_sym].index(travel_plan[:start_station])
    stop_index = @network[travel_plan[:stop_train].to_sym].index(travel_plan[:stop_station])
    start_us_index = @network[travel_plan[:start_train].to_sym].index("us")
    stop_us_index = @network[travel_plan[:stop_train].to_sym].index("us")
    if :start_train == :stop_train
      #absolute value of difference between index of start station and index of stop station
      total_length_of_trip = (start_index - stop_index).abs
    else
      #absolute value of sum of both differences to union square
      total_length_of_trip = (start_index - start_us_index).abs + (stop_index - stop_us_index).abs
    end
    # Calculate the total_length_of_trip here!
    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

my_trip = SubwayManager.new
my_trip.help

#start -> end


