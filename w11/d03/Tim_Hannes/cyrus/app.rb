Dir.foreach('/files/') do |item|
  delete if item == "/" || "," || " "
end
