class UsersController < ApplicationController
    def index
        user = User.all 
        render json: user
    end
    def create
        user = User.create(strong_params)
        render json: user, include: [:workouts]
    end

    def names
        name = params[:name]
        password = params[:password]
        user = User.find_or_create_by(name: name, password: password)
        render json: user, include: [:workouts]
    end

    private

    def strong_params
        params.require(:user).permit(:name, :password)
    end
end
