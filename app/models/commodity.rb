class Commodity < ActiveRecord::Base
  attr_accessible :id, :name, :price, :product_id, :time
end
