# frozen_string_literal: true

class ArticleGroupBlueprint < Blueprinter::Base
  identifier :id

  association :articles, blueprint: ArticleBlueprint

  fields :published_at
end
