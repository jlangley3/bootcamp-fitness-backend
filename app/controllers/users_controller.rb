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
        render json: user.to_json(:include => {
            :workouts=> {:include => [:exercises]}
          })
    end
    def show
        user = User.find(params[:id])
        render json: user.to_json(:include => {
            :workouts=> {:include => [:exercises]}
          })
    end
    def destroy  
        byebug
        user = User.find(params[:id]) 
        
        render json: {message: "delete complete"} 
    end

    private

    def strong_params
        params.require(:user).permit(:name, :password)
    end
end
