Rails.application.routes.draw do
  root "home#index"
  get "/secret", to: "home#secret"
  
end
