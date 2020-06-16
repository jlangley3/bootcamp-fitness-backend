class Workout < ApplicationRecord
    has_many :exercise_workouts
    has_many :exercises, through: :exercise_workouts
    belongs_to :user
end
