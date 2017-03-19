Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :user do
    resources :flights
  end

  resources :charges

  root 'welcome#index'
end
