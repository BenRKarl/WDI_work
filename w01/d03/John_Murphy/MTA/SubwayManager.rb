
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

    puts "What line are you on?"
    @start_line = gets.chomp.intern
    travel_plan[:sl] = @start_line

    if @network[travel_plan[:sl]] == nil
      puts "Try another input"
      return menu
    end

    puts "What stop are you at?"
    @start_stop = gets.chomp
    travel_plan[:ss] = @start_stop

    if @network[travel_plan[:sl]].include?(travel_plan[:ss]) != true
      puts "Try another input"
      return menu
    end

    puts "What is your destination line?"
    @end_line = gets.chomp.intern
    travel_plan[:el] = @end_line

    if @network[travel_plan[:el]] == nil
      puts "Try another input"
      return menu
    end

    puts "What is your destination stop?"
    @end_stop = gets.chomp
    travel_plan[:es] = @end_stop

    if @network[travel_plan[:el]].include?(travel_plan[:es]) != true
    puts "Try another input"
    return menu
    end
    # prompts (puts) and allow the user to enter information (gets)
    # consider defining values keys for :start_train, :start_station, :stop_train, :stop_station
    return travel_plan
  end

  def travel_distance(travel_plan)

    # this is the index of the starting stop    (need to take absolute value)     @network[travel_plan[:sl]].index(travel_plan[:ss])
    # this is the index of the ending stop      (need to take absolute value)     @network[travel_plan[:el]].index(travel_plan[:es])
    # this is the index of us at starting line  (need to take absolute value)     @network[travel_plan[:sl]].index("us")
    # this is the index of us at ending line    (need to take absolute value)     @network[travel_plan[:el]].index("us")
    # distance from start stop to US            (need to take absolute value)     @network[travel_plan[:sl]].index(travel_plan[:ss]) - @network[travel_plan[:sl]].index("us")
    # distance from end stop to US              (need to take absolute value)     @network[travel_plan[:el]].index(travel_plan[:es]) - @network[travel_plan[:el]].index("us")


    if travel_plan[:sl] == travel_plan[:el]
      travel_distance = @network[travel_plan[:sl]].index(travel_plan[:ss]) - @network[travel_plan[:el]].index(travel_plan[:es])
      total_length_of_trip = travel_distance.abs
      return total_length_of_trip
    else
      one_dist = @network[travel_plan[:sl]].index(travel_plan[:ss]) - @network[travel_plan[:sl]].index("us")
      two_dist = @network[travel_plan[:el]].index(travel_plan[:es]) - @network[travel_plan[:el]].index("us")
      total = one_dist.abs + two_dist.abs
      total_length_of_trip = total.abs
      return total_length_of_trip
    # Calculate the total_length_of_trip here!
    end
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

toot = SubwayManager.new
toot.help


#travel_plan ={
#    :sl => "n",
#    :ss => "ts",
#    :el => "l",
#    :es => "1st"
#}
# @network
#{
#    :n => [
#        [0] "ts",
#        [1] "34th",
#        [2] "28th-n",
#        [3] "23rd-n",
#        [4] "us"
#    ],
#    :l => [
#        [0] "8th",
#        [1] "6th",
#        [2] "us",
#        [3] "3rd",
#        [4] "1st"
#    ],
#    :s => [
#        [0] "gc",
#        [1] "33rd",
#        [2] "28th-s",
#        [3] "23rd-s",
#        [4] "us"
#    ]
#}
#


