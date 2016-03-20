Rails.application.routes.draw do
  resources :hook, only: :create
end
