class SubwayManager
  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
    n_l = []
  end

  def menu
    travel_plan = {}
    #Get the user's starting station
    puts "At what station are you now?"
    start_station = gets.chomp.downcase!

    #Figure out what train they're starting on
    case start_station
      when 'ts', '34th', '28th-n', '23rd-n'
        start_train = n
        puts "You are on the 'n' train."
      when '8th', '6th', 'us'
        start_train = lno
        puts "You are on the 'l' north train."
      when '3rd', '1st'
        start_train = lso
        puts "You are on the 'l' south train."
        puts "You are on the 'l' train."
      when 'gc', '33rd', '28th-s', '23rd-s'
        start_train = s
        puts "You are on the 's' train."
      else
        puts "That station doesn't exist here."
    end

    #Get the user's desired final station
    puts "Please enter a desired station."
    stop_station = gets.chomp

    #Figure out what train it's on
    case stop_station
    when 'ts', '34th', '28th-n', '23rd-n'
      stop_train = n
        puts "You are going to the 'n' train."
      when '8th', '6th', 'us', '3rd', '1st'
        stop_train = l
        puts "You are going to the 'l' train."
      when 'gc', '33rd', '28th-s', '23rd-s'
        stop_train = s
        puts "You are going to the 's' train."
      else
        puts "That station doesn't exist here."
    end

    #Figure out compound train route
    if start_train == n
      if stop_train == n
        train_route = n
      elsif stop_train == l
        train_route = n_l
      elsif stop_train == s
        train_route = n_s
      end
    end

    if start_train == l
      if stop_train == l
        train_route = l
      elsif stop_train == n
        train_route = l_n
      elsif stop_train == s
        train_route = l_s
      end
    end

    if start_train == s
      if stop_train == s
        train_route = s
      elsif stop_train == n
        train_route = s_n
      elsif stop_train == l
        train_route = s_l
      end
    end


    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station


    return travel_plan
  end

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
subway = SubwayManager.new
subway.menu
