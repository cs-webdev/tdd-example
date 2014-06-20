class PostsController < ApplicationController
  def index
    @posts = if params[:tag]
               Post.with_tag params[:tag]
             else
               Post.all
             end
  end
end
