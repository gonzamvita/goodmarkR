class Api::BookmarksController < BaseApiController
  skip_before_action :verify_authenticity_token, if: :json_request?

  def create
    @bookmark = Bookmark.new(title: "#{@json['title']}", content: "#{@json['content']}")
    if @bookmark.save
      render json: @bookmark
    else
       render nothing: true, status: :bad_request
    end
  end

  protected
  def json_request?
    request.format.json?
  end
end
