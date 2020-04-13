class DashboardsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @dashboard = @user.dashboard
    render :show
  end

  def edit
  end

  def update
  end
end
