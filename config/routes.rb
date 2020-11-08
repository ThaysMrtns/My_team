Rails.application.routes.draw do
  #controller#page
  root 'pages#home'
  #verb 'rout name', to: 'path'
  get 'login', to: 'pages#login'
  get 'register', to: 'pages#register'
end
