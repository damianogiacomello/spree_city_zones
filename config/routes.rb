Rails.application.routes.draw do
  # Add your extension routes here
  resources :cities, :only => :index
  
  namespace :admin do
    resources :countries do
      resources :states do
        resources :cities
      end
    end
    resources :cities
  end
end
