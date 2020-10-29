# frozen_string_literal: true

class Location < ApplicationRecord
  has_many :reviews, dependent: :destroy
  scope :search, ->(country) { where('country ilike ?', "%#{country}%") }

  # Location.search("canada") => return all teh locations that matches 'canada' country
  # filtering the locations data by the country name
  # Location.where(country: 'abcdcanadaishabcd')
  # Location.where(country: 'Canadaa')

  # scope :find_by_country, -> {where("country == Location.country")}

  # scope :search, -> (name_parameter) { where("author ilike ?", "%#{name_parameter}%") }
end
