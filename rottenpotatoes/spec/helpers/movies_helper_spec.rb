require 'rails_helper'
 describe MoviesHelper do
     
  describe 'oddness' do
    it 'decide if a number is odd' do
        number = 1
        expect(oddness(number)).to eq('odd')
    end
    it 'decide if a number is even' do
        number = 2
        expect(oddness(number)).to eq('even')
    end
  end
end