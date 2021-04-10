class LikesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        if already_liked?
            flash[:notice] = "ya le diste LVL"
        else
            @post.likes.create(user_id: current_user.id)
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @like = @post.likes.find(params[:id])
        @like.destroy
    end
    
end
