Rails.application.routes.draw do
  # get 'home/index'
  # get '/home' => 'home#index'
    root 'home#index'
  
  resources :employees  
  resources :documents

  get 'documents/new/:emp_id' => 'documents#new', as: 'documents_new'

  # # Public Root
  # get 'employe/create'=>'employe#create'
  # get 'employe/Edit'=>'employe#Edit'
end
