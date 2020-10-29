# frozen_string_literal: true

require 'rails_helper'

describe 'get all locations route', type: :request do
  let!(:quotes) { FactoryBot.create_list(:location, 20) }

  before { get '/locations' }

  it 'returns all locations' do
    expect(JSON.parse(response.body).size).to eq(20)
  end
  it 'returns status of 200' do
    expect(response).to have_http_status(:success)
  end
end

describe 'get one location route', type: :request do
  before { get '/locations/123456789' }

  it 'does not return a quote and returns an error message if ID doesnt exist.' do
    expect(response).to have_http_status(:not_found)
  end

  it 'returns the number of locations' do
    get '/locations'
    expect(JSON.parse(response.body).size).to eq(0)
  end
end
