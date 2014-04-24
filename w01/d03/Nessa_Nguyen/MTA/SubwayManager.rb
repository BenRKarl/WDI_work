class SubwayManager
  attr_accessor :network
  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
  end
  attr_accessor :start_station
  attr_accessor :stop_station
  attr_accessor :start_train
  attr_accessor :stop_train

  def start
    puts "Which station are you at?"
    @start_station = gets.chomp.downcase
    @start_train = which_train(start_station)
    #TEST return start_station, start_train
  end

  def stop
    puts "Which station do you want to get to?"
    @stop_station = gets.chomp.downcase
    @stop_train = which_train(stop_station)
  end


  def which_train(station)
    i = 0
    while i < 5
      line = :n if @network[:n][i] == station 
      line = :s if @network[:s][i] == station 
      line = :l if @network[:l][i] == station 
      i += 1
    end
    return line
  end

  def menu
    travel_plan = {
    :start_station => start_station,
    :start_train => start_train,
    :stop_station => stop_station,
    :stop_train => stop_train
    }
    return travel_plan  
  end #menu ends



  def travel_distance(travel_plan)
    travel_plan.each { || }
    # Calculate the total_length_of_trip here!

    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

newsub = SubwayManager.new

puts "Take a look at the map: #{newsub.network}"
newsub.start
newsub.stop
  
  def absolute(num)
    if num >= 0
      num = num
    else 
      num = -num  
    end  
  end

  if newsub.start_station == newsub.stop_station
    puts "You're already here"

  elsif newsub.start_train == newsub.stop_train
    index1 = newsub.network[newsub.start_train].index(newsub.start_station) 
    index2 = newsub.network[newsub.stop_train].index(newsub.stop_station) 
    index = absolute(index1 - index2)

    puts "It will take you #{index} stop(s)"
  elsif newsub.start_train != newsub.stop_train
    index1 = newsub.network[newsub.start_train].index(newsub.start_station) 
    index2 = newsub.network[newsub.start_train].index('us') 
    index3 = newsub.network[newsub.stop_train].index('us') 
    index4 = newsub.network[newsub.stop_train].index(newsub.stop_station)
    index = absolute(index1 - index2) + absolute(index3 - index4) 
    puts "It will take you #{index} stop(s)" 
  else
    puts "Pick again"
  end
