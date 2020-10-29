# frozen_string_literal: true

class AddUserNameToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :user_name, :string
  end
end
