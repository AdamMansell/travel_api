require 'faker'

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_locations
    # seed2= Seed.new
    # seed2.generate_reviews
  end

  def generate_locations
    20.times do |i|
      location = Location.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )
      review = Review.create!(:rating => 10,:review_text => "I saw #{Faker::TvShows::BreakingBad.character} there", :location_id => location.id, :user_name => "Jimbo" )
      puts "created #{:review_text}"
      puts "Location #{i}: City is #{location.city} in the country of '#{location.country}'."
    end
  end

  # def generate_reviews
  #   20.times do |i|
  #     review = location.Review.create!(:rating => 10,:review_text => "I saw #{Faker::TvShows::BreakingBad.character} there", :location_id => 1, :user_name => "Jimbo" )
  #     puts "created #{review_text}"
  #   end
  # end

end

Seed.begin