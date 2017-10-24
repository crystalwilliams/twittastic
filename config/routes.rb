Rails.application.routes.draw do
  get 'profiles' => 'profiles#index'

  get 'profiles/:id' => 'profiles#show', as: :profile

  resources :relationships
  resources :tweets do
    resource :likes
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
