require 'spec_helper'

describe KittensController do
  describe 'given a kitten' do

    describe 'GET index' do
      before :each do
        get index
      end
      it 'responds sucessfully' do
        expect(response.code).to Eq('200')
      end
    end
  end
end
