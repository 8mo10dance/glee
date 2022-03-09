 # frozen_string_literal: true

class ArticleBlueprint < Blueprinter::Base
  identifier :id

  association :article_items, blueprint: ArticleItemBlueprint

  fields :title
end
