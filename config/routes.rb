Rails.application.routes.draw do
  devise_for :users

  root "bookmarks#index"

  resources :bookmarks, only: :index
end
