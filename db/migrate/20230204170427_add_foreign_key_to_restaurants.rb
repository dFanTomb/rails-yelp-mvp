class AddForeignKeyToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :restaurant, index: true
  end
end

# Nesting resources
# rails g migration AddForeignKeyToRestaurants
# generates THIS migration file
# line 3 = creates restaurant_id in the schema.rb (line 29)
# and connects restaurants table with reviews table by restaurant_id
