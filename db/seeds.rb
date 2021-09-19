# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.create(
  status: "Submitted",
  price: 0.00,
  client_name: "John Smith", 
  email: "john@example.com", 
  phone: "5555555555", 
  project_type: "commercial", 
  floors: "1 story", 
  building_sqft: 5465, 
  garage: false,
  roof_material: "", 
  pitch_of_roof: "", 
  gutter_sqft: 200,
  ext_material: "Brick",
  screen_removal: true, 
  door_material: "wood",
  flt_surface_sqft: 5000,
  driveway_size: "parking lot",
  driveway: false,
  comments: "Big house",
  roof_services: false,
  gutter_cleaning: true,
  building_wash: true,
  flat_surfaces: true,
  rust_removal: false,
);

OfferedService.create(
  name: "Building (House) Wash", 
  description: " ", 
  img_url: "https://via.placeholder.com/350x150"
) 
OfferedService.create(
  name: "Gutter Cleaning", 
  description: " ", 
  img_url: "https://via.placeholder.com/350x150"
) 
OfferedService.create(
  name: "Flat Surface/Driveway Wash", 
  description: " ", 
  img_url: "https://via.placeholder.com/350x150"
) 
OfferedService.create(
  name: "Rust Removal", 
  description: " ", 
  img_url: "https://via.placeholder.com/350x150"
) 
OfferedService.create(
  name: "Roof Services", 
  description: " ", 
  img_url: "https://via.placeholder.com/350x150"
) 

