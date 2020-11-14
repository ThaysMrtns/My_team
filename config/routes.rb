Rails.application.routes.draw do
  #Will give me all routes of the article
  resources :article, only: [:show, :index, :new, :create, :edit, :update, :destroy] 
end
