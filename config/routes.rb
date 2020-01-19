Rails.application.routes.draw do
  root "welcome#index"

  get 'products/index'
  get 'create', to: 'products#create'
  get 'remove', to: 'products#remove'
  get 'search', to: 'products#search'

  get 'quem_somos/index'
end
