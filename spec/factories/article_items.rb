# frozen_string_literal: true

FactoryBot.define do
  factory :article_item do
    association :article

    text { Faker::Lorem.paragraph }
  end
end
