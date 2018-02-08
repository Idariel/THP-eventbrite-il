class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    @user.save
    redirect_to @user
  end
  def show
    # return one user
    @user = User.find(params[:id])
  end
  def edit # idem new
    @user = User.find(params[:id])
  end
  def update # pratiquement identique à create
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  # Utilisé dans create et update
  private
  def user_params
    params.require(:user).permit(:name)
  end

end
