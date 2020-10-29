# frozen_string_literal: true

20.times do |i|
  location = Location.create!(
    country: Faker::Address.country,
    city: Faker::Address.city
  )
  5.times do
    location.reviews.create!(rating: 10, review_text: "I saw #{Faker::TvShows::BreakingBad.character} there", user_name: Faker::Name.name)
  end      
  puts "Location #{i}: City is #{location.city} in the country of '#{location.country}'."
end