class BlogsController < ApplicationController
  
  def show
    @blog = Blog.friendly.find(params[:id])
    @posts = @blog.posts.order("publication_date DESC")
  end
end