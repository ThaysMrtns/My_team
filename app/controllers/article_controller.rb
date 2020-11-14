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
        @article = Article.new
    end

    def create
       @article = Article.new(params.require(:article).permit(:nome, :cargo, :email, :salario)) 
       if @article.save()
            flash[:alert] = "Added with successfully!"
            redirect_to @article
       else
            render 'new'
       end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:nome, :cargo, :email, :salario))
            flash[:alert] = "Updated with successfully!"
            redirect_to @article
        else
            render 'edit'
        end
    end
end