Rails.application.routes.draw do
  mount Shoppe::Engine => "/admin"
  get "product/:permalink", to: "products#show", as: "product"
  post "product/:permalink", to: "products#buy", as: "buy"
  root to: "products#index"
  get "basket", to: "orders#show"
  delete "basket", to: "orders#destroy"



  match "checkout", to: "orders#checkout", as: "checkout", via: [:get, :patch]
  match "checkout/pay", to: "orders#payment", as: "checkout_payment", via: [:get, :post]
  match "checkout/confirm", to: "orders#confirmation", as: "checkout_confirmation", via: [:get, :post]

end
