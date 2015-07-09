Rails.application.routes.draw do
  mount Shoppe::Engine => "/shoppe"
  root to: 'visitors#index'
end
