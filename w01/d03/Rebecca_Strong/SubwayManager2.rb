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
    puts "Which network is your start_train on?"
    user_input = gets.chomp
    if network == "n"
      start_station=([:n])
    elsif "l"
      start_station=([:l])
    elsif "s"
      start_station=([:s])
    end

    puts "At which station do you want to start?"
    user_input = 'ts'


    puts "which network is your stop_train on?"
    user_input = gets.chomp
    if network == "n"
      stop_station=([:n])
    elsif "l"
      stop_station=([:l])
    elsif "s"
      stop_station=([:s])
    end

    puts "At which station do you want to stop?"
    user_input = '1st'
  end

    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station


  def travel_distance(travel_plan)

    puts "\n\nYour trip length is #{6} stops.\n\n"


    # Calculate the total_length_of_trip here!

  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
