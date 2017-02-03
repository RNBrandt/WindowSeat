Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  get 'welcome/index'

  resources :user do
    resources :flights
  end

  resources :charges

  root 'flights#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
