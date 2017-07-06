class UsersController < ApplicationController

  def index
    @q = User.ransack(params[:q])
    @users = @q.result
  end

  def show
    @user = User.find(params[:id])
  end

  def about_us
      render("about_us.html.erb")
    end
end
