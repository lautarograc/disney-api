class Api::V1::CharactersController < ApplicationController
    before_action :set_character, only: %i[ show edit update destroy ]
    def show
    @character = Character.find(params[:id])
    respond_to do |format|
        format.html
        format.json { render json: @character }
    end
end


    def index
        @character = Character.all
        render json: @character.as_json(
            only: [:id, :name]
        )
    end
    def create
        @character = Character.create(
            name: params[:name],
            age: params[:age],
            height: params[:height],
            weight: params[:weight],
            lore: params[:lore]
        )
        render json: @character
    end

    def destroy
       Character.destroy(params[:id])
        end

def update
    @character = Character.find(params[:id])
    @character.update(character_params)

        render json: @character
    end

    private
        def set_character
        @character = Character.find(params[:id])
        end


def character_params
    params.require(:character).permit(:name, :age, :height, :weight, :lore)
   end    
end
