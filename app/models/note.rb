class Note < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :title, :body
  end
end
