class AddCategoriesMoviesJoinTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :category, index: true
  end
end
