Rails.application.routes.draw do
  resources :interests

  root 'interests#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
