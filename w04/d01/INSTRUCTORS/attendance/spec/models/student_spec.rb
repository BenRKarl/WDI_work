require 'spec_helper'

describe Student do
  it 'has a name' do
    student = Student.new name: 'Deremy'
    expect(student.name).to eq 'Deremy'
  end

  it 'has many check-ins' do
    student = Student.create name: 'Lichard'
    5.times do
      CheckIn.create student: student, time: Time.now
    end
  end
end
