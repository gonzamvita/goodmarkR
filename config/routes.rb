Rails.application.routes.draw do
  devise_for :users

  root "bookmarks#index"

  resources :bookmarks, only: :index

  scope '/api' do
    scope '/v1' do
      scope '/users' do
        post '/sign_in' => "api/users/sessions#create"
      end
      scope '/bookmarks' do
        post '/' => "api/bookmarks#create"
      end
    end
  end
end
