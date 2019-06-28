class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    # @article = Article.where("title='hello world'")
    # @article = Article.where(["title=? and text=?", "hello world", "My name is Hoang"])
    # @article = Article.where(title: "hello world", text: "My name is Hoang")
    # @article = Article.order(:title)
    # @article = Article.where(id: [1, 6, 7])
    # @article = Article.where.not(id: [1, 6, 7])
    # @article = Article.select(:title).distinct
    # @article = Article.all.select(:title).distinct # comment out all link_to to use this one.

    # if Article.where(title: "abcdefght").many?
    #   @article = Article.all
    # else
    #   @article = Article.take(1)
    # end

    # Article.where(id: 1).includes(:comments).explain #show what this code did in SQL statments

    @article = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
