class SubwayManager
  attr_accessor :network, :option
  attr_accessor :start_station
  attr_accessor :stop_station
  attr_accessor :start_train
  attr_accessor :stop_train

  def initialize()
    n = ['ts', '34th', '28th-n', '23rd-n', 'us']
    l = ['8th', '6th', 'us', '3rd', '1st']
    s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
    @network = {}
    @network[:n] = n
    @network[:l] = l
    @network[:s] = s
  end

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
  end 


  def travel_distance(menu)       
# Get absolute value of difference between stops
      def absolute(num)
        if num >= 0
          num = num
        else 
          num = -num  
        end  
      end

    if start_station == stop_station
      puts "You're already here"  
    
    elsif start_station == 'us' 
      index = network[stop_train].index(stop_station) - network[stop_train].index('us')      
      index = absolute(index)  
      puts "Take #{stop_train} train from 'us' to #{stop_station}.
      It will take you #{index} stop(s)"

    elsif stop_station == 'us' 
      index = network[start_train].index(start_station) - network[start_train].index('us')
      index = absolute(index)  
      puts "Take #{stop_train} train to 'us'.
      It will take you #{index} stop(s)"


    elsif start_train == stop_train
      index1 = network[start_train].index(start_station) 
      index2 = network[stop_train].index(stop_station) 
      index = absolute(index1 - index2)  
      puts "Take #{start_train} train to #{stop_station}. 
      It will take you #{index} stop(s)"

    elsif start_train != stop_train
      index1 = network[start_train].index(start_station) 
      index2 = network[start_train].index('us') 
      index3 = network[stop_train].index('us') 
      index4 = network[stop_train].index(stop_station)
      index = absolute(index1 - index2) + absolute(index3 - index4) 
      puts "Take #{start_train} train to 'us' stop then #{stop_train} train to '#{stop_station}' 
      \n It will take you #{index} stop(s)" 
    end
 
    #return total_length_of_trip = index
  end

  def help
    travel_plan = menu
    total_length_of_trip = index
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end

newsub = SubwayManager.new

puts "Take a look at the map: #{newsub.network}"
newsub.start
newsub.stop
newsub.travel_distance(newsub.menu)