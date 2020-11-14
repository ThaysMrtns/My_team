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

    def new
    end

    def create
       @article = Article.new(params.require(:article).permit(:nome, :cargo, :email, :salario)) 
       @article.save()
       redirect_to @article
    end
end