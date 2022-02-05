class Api::V1::CategoriesController < ApplicationController
    before_action :authenticate_request
    def show
    @category = Category.find(params[:id])
    respond_to do |format|
        format.html
        format.json { render json: @category}
    end
end

def index
        @category = Category.all
    
    respond_to do |format|
        format.html
        format.json { render json: @category }
    end
end
def create
    @category = Category.create(category_params)
    render json: @category
end

def destroy
    Category.destroy(params[:id])
end


def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    render json: @category
end


def category_params
    params.require(:category).permit(:name)

end

end

