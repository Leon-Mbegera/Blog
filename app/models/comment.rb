class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  validates :commentor, presence: true
  validates :body, presence: true, length: { maximum: 15 }
end
