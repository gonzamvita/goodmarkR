class Api::BookmarksController < BaseApiController
  skip_before_action :verify_authenticity_token, if: :json_request?

  def create
    user = verify_user(params[:userToken])
    bookmark = Bookmark.new(title: "#{params[:title]}",
                            origin_title: "#{params[:origin_title]}",
                            url_origin: "#{params[:url_origin]}",
                            image_url: "#{params[:favicon]}",
                            bookmark_type_id: "#{params[:type]}")
    if user.bookmarks << bookmark
      render json: bookmark, status: :created
    else
       render nothing: true, status: :bad_request
    end
  end

  protected
  def verify_user(auth_token)
    user = User.find_by_auth_token(auth_token)
    return user
  end

  def json_request?
    request.format.json?
  end
end
