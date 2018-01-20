class Article < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :category, optional: true
  has_and_belongs_to_many :tags
end
