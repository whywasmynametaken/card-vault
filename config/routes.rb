Rails.application.routes.draw do
  get 'users/index'
  get 'users/show/:id' => 'users#show', as: :users_show
  get 'users/index'
  get 'users/profile'
  get 'cards/expired'
  get 'cards/shared'
  post 'cards/shared'
  resources :cards
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "cards#index"
  resources :relationships, only: [:create, :destroy, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
