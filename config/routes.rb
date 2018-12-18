Rails.application.routes.draw do
  namespace :master do
    resources :memorials
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
