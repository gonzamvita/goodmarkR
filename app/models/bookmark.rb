class Bookmark < ActiveRecord::Base
  belongs_to :user
  belongs_to :bookmark_type

  def description
    self.bookmark_type.description
  end
end
