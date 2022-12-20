class HauntingsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid


    def create
        haunting = Haunting.create!(haunting_params)
        render json: haunting, status: :created
    end

    private

    def haunting_params
        params.permit(:ghost_id, :haunted_house_id)
    end

    def render_invalid(invalid)
        render json: {errors: ErrorMessageSerializer.butts_errors(invalid.record.errors)}, status: :unprocessable_entity
    end
end
