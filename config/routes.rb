Rails.application.routes.draw do
  resources :topics do
    resources :posts
  end
  resources :welcome_pages
  resources :interests


  root 'welcome_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
