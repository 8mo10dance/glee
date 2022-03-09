# frozen_string_literal: true

FactoryBot.define do
  factory :article_group do
    transient do
      articles_count { 3 }
    end

    after :build do |g, e|
      g.articles = build_list(:article, e.articles_count, article_group: g)
    end
  end
end
