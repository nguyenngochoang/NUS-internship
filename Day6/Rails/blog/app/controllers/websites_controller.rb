class WebsitesController < ApplicationController
    
    def create
       @article = Article.find(params[:article_id])
       @website = @article.websites.create(website_params)
       redirect_to article_path(@article)
    end
    
    def website_params
       params.require(:website).permit(:link,:note) 
    end
end
