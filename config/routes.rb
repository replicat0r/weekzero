Rails.application.routes.draw do
  mount Shoppe::Engine => "/shoppe"
  get "product/:permalink", to: "products#show", as: "product"
  post "product/:permalink", to: "products#buy", as: "buy"
  root to: "products#index"
  get "basket", to: "orders#show"
  delete "basket", to: "orders#destroy"

end
