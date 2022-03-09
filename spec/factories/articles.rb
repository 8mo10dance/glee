# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    association :article_group

    title { Faker::Lorem.word }

    transient do
      article_items_count { 3 }
    end

    after :build do |a, e|
      a.article_items = build_list(:article_item, e.article_items_count, article: a)
    end

    trait :published do
      published_at { Time.zone.now }
    end
  end
end
