# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :location

  # scope :five_stars, -> { where(rating: 5) } # ActiveRecird::Relation object ==> []
  # scope :poor_stars, -> { where(rating: 1) }

  # Review.five_stars => all the 5 star reviws!
  # Review.poor_stars ==> all the 1 star reviews
  # Review.five_stars.poor_stars

  # Scope for limiting by country.  Not sure if we need it in both places yet
  # scope :country, -> (country_parameter) { where(location.country =={country_parameter})}

  # scope :city, where

  # scope :search, -> (name_parameter) { where("author ilike ?", "%#{name_parameter}%") }
end
