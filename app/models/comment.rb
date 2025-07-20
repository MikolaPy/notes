class Comment < ApplicationRecord

  belongs_to :note

  validates :name, :body, presence: true
end
