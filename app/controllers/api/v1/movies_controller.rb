class Api::V1::MoviesController < ApplicationController
def show
    @movie = Movie.find(params[:id])
    respond_to do |format|
        format.html
        format.json { render json: @movie}
    end
end
def index
@movie = Movie.all
render json: @movie

def create
    @movie = Movie.create(
        title: params[:title],
        release_date: params[:release_date],
        rating: params[:rating],
        category_id: params[:category_id]
    )
    render json: @movie
end

def destroy
    Movie.destroy(params[:id])
end


def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(
        title: params[:title],
        release_date: params[:release_date],
        rating: params[:rating],
        category_id: params[:category_id])
    render json: @movie
end



end


end