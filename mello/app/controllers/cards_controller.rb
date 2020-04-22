class CardsController < ApplicationController

    def create
        @card = Card.new(card_params)
        @card.lane_id = 1
        if @card.save
            flash[:success] = "Great! Your card has been created!"
        else
            flash.now[:error] = "rats! Fix your mistake!"
            render plain: params[:card].inspect
        end 
        # redirect_to photos_url / root_url / root_path
    end

    private
    def card_params
        params.require(:card).permit(:body, :priority, :due)
    end
end
