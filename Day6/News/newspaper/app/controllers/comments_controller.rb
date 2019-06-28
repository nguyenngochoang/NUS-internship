class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])

    @comment = @article.comments.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    if @comment.save
      redirect_to [@article, @comment]
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def index
    @article = Article.find(params[:article_id])
    # @comment = @article.comments.select("body")
    @comment = @article.comments.all
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
