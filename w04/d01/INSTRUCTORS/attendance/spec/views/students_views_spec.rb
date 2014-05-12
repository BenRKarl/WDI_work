require 'spec_helper'

describe "students/index" do
  it "has a list of student names" do
    fake_student = stub_model Student, name: 'Lichard'
    assign(:students, [fake_student])
    render
    expect(rendered).to include('Lichard')
  end
end
