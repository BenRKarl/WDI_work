require 'spec_helper'

describe StudentsController do
  describe '#index' do
    it 'has a list of students' do
      s1, s2 = Student.create(name: 'Lichard'), Student.create(name: 'Bod')
      get :index
      expect(assigns(:students)).to match_array [s1, s2]
    end
  end
end
