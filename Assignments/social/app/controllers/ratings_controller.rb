class RatingsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      @blog = Blog.find(params[:blog_id])
      @rating = @blog.ratings.build(rating_params)
      @rating.user = current_user
  
      if @rating.save
        redirect_to @blog, notice: 'Thank you for rating!'
      else
        redirect_to @blog, alert: 'Failed to rate.'
      end
    end
  
    private
  
    def rating_params
      params.require(:rating).permit(:value)
    end
  end
  