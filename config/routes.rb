Rails.application.routes.draw do
  devise_for :users

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
