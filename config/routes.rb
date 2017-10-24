Rails.application.routes.draw do
  get 'profiles/index'

  get 'profiles/show'

  resources :tweets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
