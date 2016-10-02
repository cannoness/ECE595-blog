Rails.application.routes.draw do
  root 'posts#index'
  resources :comments
  resources :posts, :has_many => :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
