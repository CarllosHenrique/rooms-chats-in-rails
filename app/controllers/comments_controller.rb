class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        @room = Room.find(params[:room_id])
        @comment = @room.comments.create(comments_params)
        @comment.user = current_user
        @comment.save
        redirect_to room_path(@room)
      end

    def destroy
        
    end
    





    private

    def comments_params
        params.require(:comment).permit(:content)
    end
    
end
