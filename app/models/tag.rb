class Tag < ApplicationRecord
  has_and_belongs_to_many :article
  scope :by_tag, -> (tag) { find_by(name: tag).article }
end
