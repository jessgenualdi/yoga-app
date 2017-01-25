Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      get '/anatomies' => "anatomies#index"
      get '/anatomy_users' => "anatomy_users#index"
      post '/anatomy_users' => "anatomy_users#create"
      get '/anatomy_users/:id' => "anatomy_users#show"
    end
  end

  get '/' => 'pages#index'
  get '/anatomy' => 'pages#index_2'
  get '/anatomy/:id' => 'pages#show'

  get '/anatomyUsers' => 'anatomy_users#index'
  get '/sequences' => 'sequences#index'


  get '/signup' => 'users#new'
  get 'user' => 'users#index'
  post '/users' => 'users#create'

  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
