require 'rails_helper'

RSpec.describe 'Yelp API service', type: :request do
  it 'Can find california burritos in denver', :vcr do
    burritos = YelpService.get_burritos('denver', 'california burrito')
require "pry"; binding.pry
    expect(burritos).to be_a(Hash)
  end
end
