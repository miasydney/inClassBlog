Rails.application.routes.draw do
  devise_for :users
  root 'articles#index', as: "home"
  # get '/articles', to: 'articles#index'
  # get '/articles/new', to: 'articles#new'
  resources :articles do
    # comments becomes a nested resource within the a block after articles resources. 
    # It tells rails that articles has a relationship with comments. has_many/belongs_to.
    resources :comments 
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
