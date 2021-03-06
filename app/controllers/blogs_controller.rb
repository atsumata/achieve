class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :update, :destroy]
  
  def confirm
    @blog = Blog.new(blogs_params)
    render :new if @blog.invalid?
  end
  
  def index
    @blogs = Blog.all
  end
  
  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end
  
  def create
    @blog = Blog.new(blogs_params)
    if @blog.save
      redirect_to blogs_path, notice: "ブログを作成しました！"
    else
      render 'new'
    end
  end
  
  def edit
    set_blog
  end
  
  def update
    set_blog
    if @blog.update(blogs_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    set_blog
    @blog.destroy
    redirect_to blogs_path, notice: "ブログを削除しました！"
  end
  
  private
    def blogs_params
      params.require(:blog).permit(:title, :content)
    end
    def set_blog
      @blog = Blog.find(params[:id])
    end
end
