Rails.application.routes.draw do
  get 'books/index'

  get 'welcome/index'

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  root "welcome#index"
  resources :books
end
