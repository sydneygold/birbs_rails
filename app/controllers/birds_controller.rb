class BirdsController < ApplicationController
    def index
        @birds = Bird.all

        render json: @birds
    end

    def show
        @bird = Bird.find(params[:id])

        render json: @bird
    end

    def create
        @bird = Bird.create({
            name: params[:name], species: params[:species], age: params[:age], tree_id: params[:tree_id] })

        render json: @bird
    end

    def update
        @bird = Bird.find(params[:id]).update(tree_id: params[:tree_id])

        render json: @bird
    end

    def destroy 
        @bird = Bird.find(params[:id]).destroy

        render json: {message: "The bird is dead. Bye birb."}
    end
end
