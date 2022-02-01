class Api::V1::CharactersController < ApplicationController
    def show
    render json: @character
    end
    def index
        @characters = Character.all
        render json: @characters
    end
    def create
        @character = Character.create(character_params)
        render json: @character
    end

    def destroy
       Character.destroy(params[:id])
        end

    def update
        @character = Character.find(params[:id])
        @character.update_attributes(character_params)
        render json: @character
    end

    private
        def set_character
        @character = Character.find(params[:id])
        end
    def character_params
        params.require(:name, :age, :weight, :height)
    end

end
