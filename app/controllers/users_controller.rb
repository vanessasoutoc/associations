class UsersController < ApplicationController
  before_action :signed_in_user
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User '#{@user.name}' created successfully"
      redirect_to @user
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(name: params[:user][:name])
      flash[:success] = "User updated"
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    if current_user.id == params[:id].to_i
      flash[:danger] = "You cannot delete currently signed in user."
      redirect_to users_path
    else
      User.find(params[:id]).destroy
      flash[:success] = "User deleted."
      redirect_to users_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
