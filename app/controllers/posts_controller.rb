class PostsController < ApplicationController
  
  def show
    @blog = Blog.friendly.find(params[:blog_id])
    @post = @blog.posts.friendly.find(params[:id])
  end
end