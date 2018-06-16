Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/index'
  resources :cards
  devise_for :users, controllers: { sessions: 'users/sessions' }
   root to: "cards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
