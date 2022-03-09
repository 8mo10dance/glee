class ArticleItem < ApplicationRecord
  belongs_to :article

  validates :text, presence: true
end
