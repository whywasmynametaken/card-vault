class UsersController < ApplicationController
  def index
  end

  def settings

  end

  def edit

  end

  def show
     @user = User.find_by(params[:id])
  end
end
