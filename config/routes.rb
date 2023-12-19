# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # GET /about
  get "/about-us", to: "about#index", as: :about


  # Rails has special syntax for the "root route"
  # using "normal" syntax, you have: get "/", to: "main#index"
  # However, you can replace 'get "/"'part with the word 'root'
  root to: "main#index"



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
