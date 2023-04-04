class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @q = current_user.posts.ransack(params[:q])
    @posts = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if params[:back].present?
      render :new
      return
    end
    
    if @post.save
      redirect_to posts_path, notice: "投稿「#{@post.title}」を登録しました。"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to posts_url, notice: "タスク「#{@post.title}」を更新しました"
  end

  def destroy
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end
