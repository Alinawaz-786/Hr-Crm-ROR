Rails.application.routes.draw do

  devise_for :admins, controllers: {
          sessions: 'admins/sessions',
          registrations: 'admins/registrations'
  }

  get '/' => 'publishers#index'
  resources :publishers
  resources :articles
  resources :documents

  get 'articles/new/:publisher_id' => 'articles#new', as: 'article_new'
  get 'articles/index/:publisher_id' => 'articles#index', as: 'article_index'
  get 'documents/new/:art_id' => 'documents#new', as: 'documents_new'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
