

class PostController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
    @posts = Post.order("created_at DESC")
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content],image_url: params[:image_url])
  end
end
