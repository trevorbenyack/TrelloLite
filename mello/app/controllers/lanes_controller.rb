class LanesController < ApplicationController
    def index
        @card = Card.new
        @all_lanes = Lane.all
        @all_cards = Card.all
    end        

    def create
        @lane.save
        redirect_to lanes_path
    end
end
