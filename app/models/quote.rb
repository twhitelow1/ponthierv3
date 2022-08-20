class Quote < ApplicationRecord
  has_many :offered_services, through: :picked_services
  has_many :picked_services

  validates_presence_of :client_name, :price, :email, :status, :project_type, :floors, :building_sqft, :garage
  validates :price, numericality:  { greater_than: -1 }
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  validates :email, length: { minimum: 4, maximum: 254 } 
  validates_length_of :client_name , minimum: 4, maximum: 50

  

end
