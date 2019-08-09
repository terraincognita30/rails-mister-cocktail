class AddReviewNameToReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :name, :string
    add_column :reviews, :review_name, :string
  end
end
