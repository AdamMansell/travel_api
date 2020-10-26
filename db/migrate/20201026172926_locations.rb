class Locations < ActiveRecord::Migration[6.0]
    def change
      create_table :locations do |t|
        t.column :country, :string
        t.column :city, :string
    end
  end
end