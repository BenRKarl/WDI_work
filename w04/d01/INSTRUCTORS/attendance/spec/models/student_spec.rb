require 'spec_helper'

describe Student do
  it 'has a name' do
    student = Student.new name: 'Deremy'
    expect(student.name).to eq 'Deremy'
  end
end
