Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :author
resources :category
resources :book

root 'book#index'

match '*path', to: 'book#index', via: :all

end


