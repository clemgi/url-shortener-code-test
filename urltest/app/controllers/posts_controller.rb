class PostsController < ApplicationController

  def index
     @posts = Post.all
  end

  def new
    @posts = Post.all
    @post = Post.new
  end

  def create
    @posts = Post.all
    @post = Post.new(post_params)
    shorty_url = generate_short_url(6)
    @post.short_url = "http://localhost:3000/" + "#{shorty_url}"
    if @post.save
      respond_to do |format|
        format.html { redirect_to "/" }
        format.js
      end
    else
      @post.short_url = "http://localhost:3000/" + "#{generate_short_url(7)}"
      @post.save
      respond_to do |format|
        format.html { redirect_to "/"  }
        format.js
      end
    end

  end

  def show
    @post = Post.find(params[:id])
    redirect_to @post.long_url
  end

  private

  def post_params
    params.require(:post).permit(:long_url, :short_url)
  end

  def generate_short_url(number)
    charset = Array('a'..'z') + Array('1'..'9')
    Array.new(number) { charset.sample }.join
  end
end



