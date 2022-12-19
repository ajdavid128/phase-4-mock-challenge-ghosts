class HauntedHousesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid

    def index
        render json: HauntedHouse.all, status: :ok
    end

    def create
        haunted_house = HauntedHouse.create!(haunted_params)
        render json: haunted_house, status: :created
    end

    private

    def haunted_params
        params.permit(:address)
    end

    def render_invalid(invalid)
        render json: {errors: ErrorMessageSerializer.butts_errors(invalid.record.errors)}, status: :unprocessable_entity
    end
end
