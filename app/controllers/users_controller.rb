class UsersController < ApplicationController
    def show
      
    end

    def posts
        @user = User.find(params[:user_id])
    end
    
end
