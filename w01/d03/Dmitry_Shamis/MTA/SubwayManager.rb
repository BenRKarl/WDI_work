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
    puts "This is the train 'map':"
    puts "n stops at 'ts', '34th', '28th-n', '23rd-n', 'us'"
    puts "l stops at '8th', '6th', 'us', '3rd', '1st'"
    puts "s stops at 'gc', '33rd', '28th-s', '23rd-s', 'us'"
    puts "Where are you starting today?"
    travel_plan[:start_station] = gets.chomp
    puts "What is your start train?"
    travel_plan[:start_train] = gets.chomp

    # if start_station == 'ts' || '34th' || '28th-n' || '23rd-n'
    #   start_train = n
    # elsif start_station == '8th' || '6th' || '3rd' || '1st'
    #   start_train = l
    # elsif start_station == 'gc' || '33rd' || '28th-s' || '23rd-s'
    #   start_train = s
    # else
    #   puts "What train are you taking?"
    #   start_train = gets.chomp
    # end

    puts "What is your final destination?"
    travel_plan[:stop_station] = gets.chomp
      puts "What is your end train?"
    travel_plan[:stop_train] = gets.chomp

    # if stop_station == 'ts' || '34th' || '28th-n' || '23rd-n'
    #   stop_train = n
    # elsif stop_station == '8th' || '6th' || '3rd' || '1st'
    #   stop_train = l
    # elsif stop_station == 'gc' || '33rd' || '28th-s' || '23rd-s'
    #   stop_train = s
    # else
    #   puts "What train gets you there?"
    #   stop_train = gets.chomp
    # end



    return travel_plan
  end

  def travel_distance(travel_plan)

    # Calculate the total_length_of_trip here!
if travel_plan[:start_train] == travel_plan[:stop_train]
  train = travel_plan[:start_train].to_sym
  start_pos = @network[train].index(travel_plan[:start_station])
  end_pos = @network[train].index(travel_plan[:stop_station])
  total_length_of_trip = ( end_pos - start_pos).abs
else
  start_train = travel_plan[:start_train].to_sym
  stop_train = travel_plan[:stop_train].to_sym
  start_pos = @network[start_train].index(travel_plan[:start_station])
  end_pos = @network[stop_train].index(travel_plan[:stop_station])
  total_length_of_trip = (start_pos - @network[start_train].index('us') ).abs + (end_pos - @network[stop_train].index('us')).abs

  end
  puts total_length_of_trip
end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

my_trip = SubwayManager.new
my_trip.travel_distance(my_trip.menu)
