class TreesController < ApplicationController
    def index
        @trees = Tree.all

        render json: @trees
    end

    def show
        @tree = Tree.find(params[:id])

        render json: @tree
    end

    def create
        @tree = Tree.create({species: params[:species], age: params[:age]})

        render json: @tree
    end

    def update
        @tree = Tree.find(params[:id]).update(name: params[:name])

        render json: @tree
    end

    def destroy 
        @tree = Tree.find(params[:id]).destroy

        render json: {message: "No more tree??"}
    end
end
