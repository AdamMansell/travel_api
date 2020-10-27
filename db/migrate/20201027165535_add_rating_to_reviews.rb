class AddRatingToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rating, :integer
    add_column :reviews, :user_name, :string
  end
end
