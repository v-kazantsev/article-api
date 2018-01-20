class Article < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :category, optional: true
  has_and_belongs_to_many :tags
  scope :by_category, -> (category) { where(category_id: Category.joins(:articles).where(name: category)) }
  scope :by_author, -> (author) { where(author_id: Author.joins(:articles).where(last_name: author.split.last)) }
end
