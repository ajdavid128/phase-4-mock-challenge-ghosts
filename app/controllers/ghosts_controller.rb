class GhostsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        render json: Ghost.all, status: :ok
    end

    def show
        ghost = Ghost.find(params[:id])
        render json: ghost, serializer: GhostShowSerializer, status: :ok
    end

    def destroy 
        Ghost.find(params[:id]).destroy
        head :no_content
    end

    private

    def render_not_found
        render json: {error: "Ghost not found"}, status: :not_found
    end

end
