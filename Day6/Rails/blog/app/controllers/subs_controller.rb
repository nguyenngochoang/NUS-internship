class SubsController < ApplicationController
  def new
    @sub = Sub.new
  end

  def create
    @comment = Comment.find(params[:comment_id])
    @sub = @comment.subs.create(sub_params)
    redirect_to comment_path(@comment)
  end

  private

  def sub_params
    params.require(:sub).permit(:language, :comment_lang)
  end
end
