Rails.application.routes.draw do
  #controller#page
  root 'pages#home'
  #verb 'rout name', to: 'path'
  get 'login', to: 'pages#login'
  get 'register', to: 'pages#register'
  #Will give me all routes of the article
  resources :article, only: [:show, :index, :new, :create, :edit, :update, :destroy] #But I want only the read operation
end
