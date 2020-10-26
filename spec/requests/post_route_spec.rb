require 'rails_helper'

describe "post a location route", :type => :request do
    before do
        post '/locations', params: {:city => "MCMINNVILLE", :country => "USA"} 
        end

    it 'returns the city' do
        expect(JSON.parse(response.body)['city']).to eq ('MCMINNVILLE')
    end

    it 'returns the country' do
        expect(JSON.parse(response.body)['country']).to eq ('USA')
    end

    it 'returns a created status' do
        expect(response).to have_http_status(:ok)
    end
end