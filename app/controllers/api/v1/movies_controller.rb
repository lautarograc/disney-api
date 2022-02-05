class Api::V1::MoviesController < ApplicationController
    before_action :authenticate_request
    def show
    @movie = Movie.find(params[:id])
    respond_to do |format|
        format.html
        format.json { render json: @movie}
    end
end

def index
    if request.query_parameters[:title].present?
        @movie = Movie.where("title = ?", params[:title])
    elsif request.query_parameters[:category_id].present?
        @movie = Movie.where("category_id = ?", params[:category_id])
    elsif request.query_parameters[:order].present?
        @movie = Movie.order(:release_date => params[:order])

    else
        @movie = Movie.all
    end
    respond_to do |format|
        format.html
        format.json { render json: @movie }
    end
end
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
    @movie.update(movie_params)
    render json: @movie
end


def movie_params
    params.require(:movie).permit(:title, :release_date, :category_id)

end

end

