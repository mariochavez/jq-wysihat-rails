class HomeController < ApplicationController
  def index
    @post = Post.new
    @post.body = '<p>Hello <b>world !!!</b></p>'
  end

  def create
    @post = Post.new params[:post]

    render :edit
  end
end
