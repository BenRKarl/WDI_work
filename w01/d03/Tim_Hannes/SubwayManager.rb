class SubwayManager
  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    #instance variables
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
  end

  def menu
    travel_plan = {}
    puts "What line are you getting on at?"
    @start_train = gets.chomp
    puts "What station are you getting on at?"
    @start_station = gets.chomp
    puts "What line are you getting off at?"
    @stop_train = gets.chomp
    puts "What stop are you getting off at?"
    @stop_station = gets.chomp
    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station

    return travel_plan
  end

  #I am lost here... I don't understand how to test using mta_rspec.rb

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
