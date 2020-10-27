class Location < ApplicationRecord
  has_many :reviews, dependent: :destroy
  scope :search, -> (country_parameter) { where("country ilike ?", "%#{country_parameter}%") }


# scope :find_by_country, -> {where("country == Location.country")}

# scope :search, -> (name_parameter) { where("author ilike ?", "%#{name_parameter}%") }
end

