Rails.application.routes.draw do
  get "payment_method/index"
  get "payment_method/show"
  get "payment_method/new"
  get "payment_method/create"
  get "location/index"
  get "location/show"
  get "location/new"
  get "location/create"
  get "court/index"
  get "court/show"
  get "court/new"
  get "court/create"
  get "comment/index"
  get "comment/show"
  get "comment/new"
  get "comment/create"
  get "booking/index"
  get "booking/show"
  get "booking/new"
  get "booking/create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
