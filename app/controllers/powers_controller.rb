class PowersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = find_power_id
        render json: power
    end

    def update
        power = find_power_id
        power.update(power_params) 
        render json: power
    end




    private


    def power_params
        params.permit(:name, :description)
    end

    def find_power_id
        Power.find(params[:id])
    end



end
