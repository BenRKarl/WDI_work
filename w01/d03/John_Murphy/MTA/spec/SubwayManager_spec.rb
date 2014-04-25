require_relative '../SubwayManager.rb'

describe SubwayManager, "#travel_distance" do
  it "calculated the number of stops " do
    subway_manager = SubwayManager.new

    travel_plan = {}

    travel_plan[:sl] = :n
    travel_plan[:ss] = 'ts'
    travel_plan[:el] = :l
    travel_plan[:es] = '6th'

    actual = subway_manager.travel_distance(travel_plan)
    expected = 5

    expect(actual).to eql(expected)
  end
end
