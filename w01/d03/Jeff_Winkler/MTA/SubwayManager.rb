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
    puts "Here are the train/station options.  Please type these in exactly."
    all_stops = Array.new
    all_stops.push(@network[:n], @network[:l], @network[:s]).flatten!.uniq!.sort!
    #all_stops.each {|stop| print "#{stop} "}
    #print "\n"
    puts "n train:  #{@network[:n]}"
    puts "l train:  #{@network[:l]}"
    puts "s train:  #{@network[:s]}"
    puts "What train are you starting from"
    travel_plan[:start_train] = gets.chomp

    puts "What station are you starting from"
    travel_plan[:start_station] = gets.chomp

    puts "What train are you ending on"
    travel_plan[:stop_train] = gets.chomp

    puts "What station are you starting from"
    travel_plan[:stop_station] = gets.chomp

    #puts travel_plan

    start_s_ok = all_stops.include?(travel_plan[:start_station])
    start_t_ok = ["n","l","s"].include?(travel_plan[:start_train])

    stop_s_ok = all_stops.include?(travel_plan[:stop_station])
    stop_t_ok = ["n","l","s"].include?(travel_plan[:stop_train])

    if !(start_s_ok && start_t_ok && stop_s_ok && stop_t_ok)
      puts "something wrong"
      return 1
    else
      return travel_plan
    end

    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station


  end



  def travel_distance(travel_plan)

    #if travel_plan[:start_train] == travel_plan[:stop_train]
    case travel_plan[:start_train]
    when "n"
      start_index = @network[:n].index(travel_plan[:start_station])
      start_us_index = @network[:n].index('us')
    when "l"
      start_index = @network[:l].index(travel_plan[:start_station])
      start_us_index = @network[:l].index('us')
    when "s"
      start_index = @network[:s].index(travel_plan[:start_station])
      start_us_index = @network[:s].index('us')
    end

    case travel_plan[:stop_train]
    when "n"
      stop_index = @network[:n].index(travel_plan[:stop_station])
      stop_us_index = @network[:n].index('us')
    when "l"
      stop_index = @network[:l].index(travel_plan[:stop_station])
      stop_us_index = @network[:l].index('us')
    when "s"
      stop_index = @network[:s].index(travel_plan[:stop_station])
      stop_us_index = @network[:s].index('us')
    end

    if travel_plan[:start_train] ==  travel_plan[:stop_train]
      total_length_of_trip = (start_index - stop_index).abs
    else
      first_leg = (start_index-start_us_index).abs
      second_leg = (stop_index -stop_us_index).abs
      total_length_of_trip= first_leg+second_leg
    end

    puts "Total stops: #{total_length_of_trip}"
    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

mgr = SubwayManager.new
mgr.travel_distance(mgr.menu)
