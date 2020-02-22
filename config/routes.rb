Rails.application.routes.draw do
  root to: 'home#index'
  resources :posts
  resources :posts do
    resources :likes
    post 'add_like', to: 'posts#add_like'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end