class LanesController < ApplicationController
    def index
        @new_card = Card.new(priority: 3)
        @all_lanes = Lane.all
        @all_cards = Card.all
    end        

    def create
        @new_lane = lane.new
        @new_lane.name = params[:name]
        @new_lane.save
        redirect_to @new_lane
    end
end
