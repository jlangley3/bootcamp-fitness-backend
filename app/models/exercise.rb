class Exercise < ApplicationRecord
    has_many :exercise_workouts, dependent: :destroy
    has_many :workouts, through: :exercise_workouts, dependent: :destroy
  
end
