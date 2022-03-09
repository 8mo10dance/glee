class Api::V1::ArticleGroupsController < ApplicationController
  def index
    article_groups = ArticleGroup
                       .joins(articles: :article_items)
                       .distinct

    render json: { article_groups: ArticleGroupBlueprint.render_as_json(article_groups) }
  end
end
