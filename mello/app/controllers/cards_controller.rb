class CardsController < ApplicationController
    def create
        @new_card = Card.new
        @new_card.body = params[:body]
        @new_card.priority = params[:priority]
        @new_card.due = params[:due]
        @new_card.save
        redirect_to root_path
        # redirect_to photos_url / root_url / root_path
    end
end
