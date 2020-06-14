class ExercisesController < ApplicationController

    def index
        ex = Exercise.all
        render json: ex.to_json(:include => {
            :workouts=> {:except => [:created_at, :updated_at]},
          }, :except => [:created_at, :updated_at])
    end
end
