Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get '/contacts', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/projects', to: 'projects#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
