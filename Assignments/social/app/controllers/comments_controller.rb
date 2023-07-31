
class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)
    @comment.user = current_user
    
    puts params.inspect
    puts @comment.inspect
    
    if @comment.save
      redirect_to @blog, notice: 'Comment added.'
    else
      redirect_to @blog, alert: 'Failed to add comment.'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end
  
  
  
end
