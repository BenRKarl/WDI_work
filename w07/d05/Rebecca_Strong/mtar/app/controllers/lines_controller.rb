class LinesController < ApplicationController

  def show
    # What can go here?
    line_name = params[:line_name]
    #how can I find that line's data?
    line = Line.find_by(name: line_name)
    data = {info: line, stations: line.stations}
    render :json => data.to_json
  end

end
