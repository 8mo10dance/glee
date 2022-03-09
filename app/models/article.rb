class Article < ApplicationRecord
  belongs_to :article_group
  has_many :article_items, dependent: :restrict_with_exception

  validates :title, presence: true
end
