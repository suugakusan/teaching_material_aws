class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show, :followings, :follower, :like]
  before_action :exist_user?, only:[:show]
  
  def show
    @user = User.find(params[:id])
    @pagy, @posts = pagy(@user.posts.order(id: :desc))
    @favoritings = @user.favoritings
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  def followings
    @user = User.find(params[:id])
     @pagy, @followings = pagy(@user.followings)
  end

  def followers
    @user = User.find(params[:id])
    @pagy, @followers = pagy(@user.followers)
  end
  
  def likes
    @user = User.find(params[:id])
    @pagy, @favoritings = pagy(@user.favoritings)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :prefecture_id, :school_id, :profile)
  end
  
end
