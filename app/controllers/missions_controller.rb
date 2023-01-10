class MissionsController < ApplicationController

    #POST /missions
    def create 
        mission = Mission.create!(new_mission)
        render json: mission.planet, status: :created
    end

    private
    
    def new_mission
        params.permit(:name, :scientist_id, :planet_id)
    end
    
    
   
end
