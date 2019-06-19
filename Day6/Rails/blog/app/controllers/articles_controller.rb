class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_param)
 
        if @article.save        
            redirect_to @article
        else
            render 'new' # articles/new
        end
    end
    
     def show
        @article = Article.find(params[:id])
    end
    
    def index
        @articles = Article.all
    end
    
    def update
        @article = Article.find(params[:id])

        if @article.update(article_param)
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
    
    private
    def article_param
       params.require(:article).permit(:title,:text) 
      # params.require(:article).permit(:title) #text wont show if we dont give it permition
    end
    
   
end
