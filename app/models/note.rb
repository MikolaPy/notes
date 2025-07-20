class Note < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :title, :body
  end

  has_many :comments, dependent: :destroy

end
