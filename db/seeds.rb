# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create ({
  :title => 'Hawaiian',
  :description => 'This is Hawaiian pizza',
  :price => 350,
  :size => 30,
  :is_spicy => false,
  :is_veg => false,
  :is_best_offer => false,
  :path_to_image => '/images/hawaiian.jpg'
  })

Product.create ({
  :title => 'Pepperoni',
  :description => 'Nice Pepperoni pizza',
  :price => 450,
  :size => 30,
  :is_spicy => false,
  :is_veg => false,
  :is_best_offer => true,
  :path_to_image => '/images/pepperoni.jpg'
  })

Product.create ({
  :title => 'Vegetarian',
  :description => 'Amazing Vegetarian pizza',
  :price => 400,
  :size => 30,
  :is_spicy => false,
  :is_veg => false,
  :is_best_offer => false,
  :path_to_image => '/images/veg.jpg'
  })

