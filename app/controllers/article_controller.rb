class ArticleController < ApplicationController
    #render templates here!
    #this function will render the home.html.erb in the browser
    def show
        #get the data with id
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end
end