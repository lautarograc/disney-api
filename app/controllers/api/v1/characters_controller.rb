class Api::V1::CharactersController < ApplicationController
    before_action :authenticate_request
    before_action :set_character, only: %i[ search show edit update destroy ]
    def show
    @character = Character.find(params[:id])

    
    respond_to do |format|
        format.html
        format.json { render json: @character }
    end

end


    def index
        if request.query_parameters[:name].present?
        @character = Character.where("name = ?", params[:name])
        elsif request.query_parameters[:age].present?
        @character = Character.where("age = ?", params[:age])

            else
            @character = Character.all

    end
        render json: @character.as_json(
            only: [:id, :name]
        )
    end

    def create
        @character = Character.create(character_params
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
