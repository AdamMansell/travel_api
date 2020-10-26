require 'faker'

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_locations
  end

  def generate_locations
    20.times do |i|
      location = Location.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )
      puts "Location #{i}: City is #{location.city} in the country of '#{location.country}'."
    end
  end
end

Seed.begin