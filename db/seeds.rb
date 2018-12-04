# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'
require 'byebug'

def seed_museum_data
  museum_data_string = RestClient.get("https://data.cityofnewyork.us/resource/fn6f-htvy.json")
  museum_data_hash = JSON.parse(museum_data_string)
  museum_data_hash.each do |key|
    Museum.create(title: key["name"], address:key["adress1"], borough:key["city"], coordinate_x:key["the_geom"]["coordinates"][0], coordinate_y:key["the_geom"]["coordinates"][1], url:key["url"], zip:key["zip"], phone:key["tel"] )
  end
end
