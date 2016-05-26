Rails.application.routes.draw do
  root to: 'static_pages#root'
  match '/signout' => 'sessions#destroy', :via => :delete

  namespace :api, defaults: {format: :json} do
    resources :users, only: :create
    resource :session, only: [:show, :create, :destroy]
    resources :posts, only: [:index, :create, :destroy]
  end
end
