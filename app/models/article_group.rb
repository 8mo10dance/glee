class ArticleGroup < ApplicationRecord
  has_many :articles, dependent: :restrict_with_exception

  def published_at
    articles.pluck(:published_at).first
  end
end
