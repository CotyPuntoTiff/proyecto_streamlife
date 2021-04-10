class LikesController < ApplicationController
    def create
        @follow = Follow.new
        @follow_user = User.find(params[:follow_id])
        @follow.follow_id = @follow_user.id
        @follow.user_id = current_user.id

        if @follow.save
            flash[:alert] = "Le diste LVL"
        else
            flash[:alert] = "Algo paso, intentalo de nuevo"
        end
    end

    def destroy
        @follow_user = User.find(params[:id])
        @follow = Follow.where(user_id: current_user.id, follow_id: params[:id]).first
        if @follow.destroy
            flash[:alert] = 'Quitaste el LVL que diste'
        else
            flash[:alert] = 'algo paso, intentalo de nuevo'
        end
    end
end
