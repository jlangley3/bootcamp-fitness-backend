class ExercisesController < ApplicationController

    def index
        ex = Exercise.all
        render json: ex, exclude: [:workouts]
    end
end
