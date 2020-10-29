# frozen_string_literal: true

FactoryBot.define do
  factory(:location) do
    city { Faker::Address.city }
    country { Faker::Address.country }
  end
end
