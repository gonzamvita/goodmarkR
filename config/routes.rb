Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    post "/api/v1/users/login" => "devise/sessions#create"
  end

  root "bookmarks#index"

  resources :bookmarks, only: :index

  scope '/api' do
    scope '/v1' do
      scope '/bookmarks' do
        post '/' => "api/bookmarks#create"
      end
    end
  end
end
