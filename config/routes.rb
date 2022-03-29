Rails.application.routes.draw do
  root "home#index"
  resources :products
  get 'products.json', to: 'products#list'
  get "/secret", to: "home#secret"
  get '/products/:id/buy', to: 'products#buy', as: 'buy'
  get '/checkout', to: 'products#checkout', as: 'checkout'
end
