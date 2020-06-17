class Workout < ApplicationRecord
    has_many :exercise_workouts, dependent: :destroy
    has_many :exercises, through: :exercise_workouts, dependent: :destroy
    belongs_to :user
end
