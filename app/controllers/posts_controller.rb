class PostsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  # def create
  #   Post.create_from_postmark(Postmark::Mitt.new(request.body.read))
  #   render :text => "Created a post!", :status => :created
  # end

  def create
    @post = Post.new(:title => params["Subject"], :body => params["TextBody"])
    @post.save
  end

end
