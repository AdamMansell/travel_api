# frozen_string_literal: true

class Create < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.column(:review_text, :string)
      t.column(:location_id, :integer)
    end
  end
end
