class Bookmark < ActiveRecord::Base
  belongs_to :user
  has_one :bookmark_type
end
