class Add < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :locations
  end
end
