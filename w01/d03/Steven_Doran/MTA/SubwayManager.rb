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
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station

    travel_plan = {}

    puts "What subway line are you starting from? (n, l, or s)?"
    travel_plan[:start_train] = gets.chomp

    puts "What station are you starting from?"
    travel_plan[:start_station] = gets.chomp

    puts "What subway line are you stopping at? (n, l, or s)?"
    travel_plan[:stop_train] = gets.chomp

    puts "What station are you stopping at?"
    travel_plan[:stop_station] = gets.chomp

    return travel_plan

  end

  def travel_distance(travel_plan)

    # Calculate the total_length_of_trip here!



    if travel_plan[:start_train] == travel_plan[:stop_train]
      total_length_of_trip = (((@network[travel_plan[:start_train].to_sym]).index(travel_plan[:start_station])) - ((@network[travel_plan[:stop_train].to_sym]).index(travel_plan[:stop_station]))).abs
    else

      first_leg = 
      (((@network[:travel_plan[:start_train].to_sym]).index(travel_plan[:start_station])) - 
       ((@network[:travel_plan[:start_train].to_sym]).index(travel_plan["us"]))).abs
      
      second_leg =
      (((@network[:travel_plan[:stop_train].to_sym]).index(travel_plan[:stop_station])) - 
       ((@network[:travel_plan[:stop_train].to_sym]).index(travel_plan["us"]))).abs

      total_length_of_trip = frist_leg + second_leg

    end


      # {
      # :start_train => "n",
      # :start_station => "28th-n",
      # :stop_train => "s",
      # :stop_station => "8th"
      # }



    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
