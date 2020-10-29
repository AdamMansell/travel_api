# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :location

  # Scope for limiting by country.  Not sure if we need it in both places yet
  # scope :country, -> (country_parameter) { where(location.country =={country_parameter})}

  # scope :city, where

  # scope :search, -> (name_parameter) { where("author ilike ?", "%#{name_parameter}%") }
end
