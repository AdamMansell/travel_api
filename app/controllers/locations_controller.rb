# frozen_string_literal: true

class LocationsController < ApplicationController
  # WE THINK THIS IS THE PROBLEM CODE

  def index
    if params[:country].present?
      @locations = Location.search_by_country(params[:country])
    end

    if params[:city].present?
      @locations = (@locations || Location).search_by_city(params[:city])
    end

    if params[:country].present? || params[:city].present?
      json_response(@locations)
    else
      @locations = Location.all
      json_response(@locations)
    end
  end

  def show
    @location = Location.find(params[:id])
    json_response(@location)
  end

  def create
    @location = Location.new(location_params)
    json_response(@location)
  end

  def update
    # @location = Location.find(params[:id])
    if @location.update!(location_params)
      render status: 200, json: {
        message: 'This location has been updated successfully.'
      }
    end
  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy!(location_params)
      render status: 200, json: {
        message: 'This location has been deleted sucessfully.'
      }
    end
  end

  def self.find_by_country(name)
    @location = Location.search(name)
    locations = []
    @location.each do |element|
      locations.push(element)
    end
    locations
  end

  private

  def location_params
    params.permit(:city, :country)
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
