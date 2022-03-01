Rails.application.routes.draw do
  root "home#index"
  get "/secret", to: "home#secret"
  get '/products/:id/buy', to: 'products#buy', as: 'buy'
  get '/checkout', to: 'products#checkout', as: 'checkout'
end
