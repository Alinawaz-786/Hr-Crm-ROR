Rails.application.routes.draw do
  # get 'home/index'
  # get '/home' => 'home#index'
    root 'home#index'
  
  resources :employees  
  # # Public Root    
  # get 'employe/create'=>'employe#create'
  # get 'employe/Edit'=>'employe#Edit'
end
