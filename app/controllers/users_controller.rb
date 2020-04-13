class UsersController < ApplicationController
  before_action :require_no_user!

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      @user.create_dashboard
      login_user!(@user)
      redirect_to user_dashboard_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
