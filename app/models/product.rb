class Product < ActiveRecord::Base
  attr_accessible :company, :gname, :id, :name, :note, :siteid
  
	has_many :cheeses
end
