class User < ApplicationRecord
    has_many :workouts, dependent: :destroy
end
