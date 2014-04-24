
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
    puts "Trip details"
    subway_stops = Array.new
    subway_stops.push(@network[:n], @network[:l], @network[:s]).flatten!.uniq!.sort!

    puts "n train: #{@network[:n]}"
    puts "l train: #{@network[:l]}"
    puts "s train: #{@network[:s]}"

    puts "First Train?"
    travel_plan[:start_train] = gets.chomp

    puts "First station?"
    travel_plan[:start_station] = gets.chomp

    puts "Last Train?"
    travel_plan[:stop_train] = gets.chomp

    puts "Last Station?"
    travel_plan[:stop_station] = gets.chomp

    # error check for reasonable input

    start_s_ok = subway_stops.include?(travel_plan[:start_station])
    start_t_ok = ["n","l","s"].include?(travel_plan[:start_train])

    stop_s_ok = subway_stops.include?(travel_plan[:stop_station])
    stop_t_ok = ["n","l","s"].include?(travel_plan[:stop_train])
  end

  def travel_distance(travel_plan)

    start_index = @network[travel_plan[:start_train].to_sym].index(travel_plan[:start_station])
    start_us_index = @network[travel_plan[:start_train].to_sym].index('us')
    stop_index = @network[travel_plan[:stop_train].to_sym].index(travel_plan[:stop_station])
    stop_us_index = @network[travel_plan[:stop_train].to_sym].index('us')

    if travel_plan[:start_train] == travel_plan[:stop_train]
      total_length_of_trip = (start_index - stop_index).abs
    else
      first_leg = (start_index - start_us_index).abs
      second_leg = (stop_index -s top_us_index).abs
      total_length_of_trip = first_leg + second_leg
    end

    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    if total_length_of_trip == "NA"
      puts "Input Error"
    else
      if total_length_of_trip > 1 || total_length_of_trip == 0
        puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
      else
        puts "\n\nYour trip length is #{total_length_of_trip} stop.\n\n"
      end
    end
  end
end

mgr = SubwayManager.new
mgr.help

