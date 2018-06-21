class UsersController < ApplicationController
   def index
     @users = User.all
   end

   def settings

   end

   def edit

   end

   def show
     @user = User.find_by(id: params[:id])
   end

   def current
     @user = current_user
   end
end
