class Post < ApplicationRecord
  validates :short_url, uniqueness: true
end
