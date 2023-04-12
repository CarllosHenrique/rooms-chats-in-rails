class RoomsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_rooms, only: [:edit, :update, :show, :destroy]

    def index
			@rooms = Room.all
    end

    def show
      @comments = @room.comments.order(created_at: :asc)
    end

    def edit
    end

    def destroy
			@room.destroy
			redirect_to root_path
    end

    def update
			if current_user.id == @room.user_id
				@update_room = @room.update(room_params)
				return redirect_to root_path if @room.save
			end
    end
  
    def new
    	@room = Room.new
    end

    def create
			@room = current_user.rooms.create(room_params)
			if @room.save
					redirect_to root_path
			else
					render :new
			end
    end

    private

    def room_params
			params.require(:room).permit(:name, :description, :user_id)
    end

    def find_rooms
      @room = Room.find(params[:id])
    end
    

end
