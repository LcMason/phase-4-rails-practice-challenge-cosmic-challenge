class ScientistsController < ApplicationController

    before_action :find_scientist, only: [:show, :update, :destroy]
    #GET /scientist
    def index
        render json: Scientist.all
    end

    #GET /scientist/:id
    def show
        render json: @scientist, serializer: ScientistWithPlanetSerializer
    end

    #POST /scientist
    def create 
        scientist = Scientist.create!(new_scientist)
        render json: scientist, status: :created
    end

    # PATCH /scientist/:id
    def update
       @scientist.update!(new_scientist)
        render json: @scientist, status: :accepted
    end

    #DELETE /scientist/:id
    def destroy
        @scientist.destroy
        head :no_content
    end

    private

    def find_scientist
        @scientist = Scientist.find(params[:id])
    end

    def new_scientist
        params.permit(:name, :field_of_study, :avatar)
    end

  

end
