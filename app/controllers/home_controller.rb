class HomeController < ApplicationController

    def index
        @rooms = Room.all.order(created_at: :desc).limit 3

        @popular_room = Room.first
    end

end
