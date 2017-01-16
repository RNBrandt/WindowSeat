Rails.application.routes.draw do
  get 'welcome/index'

  resources :flights

  root 'flights#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
