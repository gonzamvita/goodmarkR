class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def index
    binding.pry
    @bookmarks = Bookmark.where(user: current_user)
  end
end
