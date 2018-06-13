Rails.application.routes.draw do
  resources :cards
  devise_for :users, controllers: { sessions: 'users/sessions' }
   root to: "cards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
