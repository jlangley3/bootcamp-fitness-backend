class ExerciseWorkoutsController < ApplicationController
    def index
        ew = ExerciseWorkout.all
        render json: ew, include: [:exercise, :workout]
    end
end
