class Cheese < ActiveRecord::Base
	
  attr_accessible :id, :price, :product_id, :time

	require 'nokogiri'
	require 'open-uri'

	belongs_to :product

def self.item()
	item = {"French Menu Cookbook" => "1,2,3", "Plenty" => "4,5,6", "Ruhlman's Twenty" => "7,8,9"}
end



	
	
	
	


def self.scrapeone()
	found = false
	error = false
	
	time = Time.now.utc.to_i




=begin

		@cheese = Cheese.new
		url =
		doc = Nokogiri::HTML(open(url))
		price =
		@cheese.product_id = ''
		@cheese.price = price
		@cheese.time = time.to_s
	#	@cheese.save
		
		puts 'price ' + price

=end

		@cheese = Cheese.new
		url =  "http://product.half.ebay.com/The-French-Menu-Cookbook-by-Richard-Olney-1985-Hardcover/1305581&tg=info"
		doc = Nokogiri::HTML(open(url))
		price = doc.at_css(".pdpbestpricestyle").text.delete('$')
		pricef = price.to_f
		shippingf = 3.99
		pricef = pricef + shippingf
		prices = pricef.round(2).to_s
		@cheese.product_id = '1'
		@cheese.price = prices
		@cheese.time = time.to_s
		@cheese.save
		
	#	puts 'half price ' + prices




		@cheese = Cheese.new
		url = "http://www.abebooks.com/servlet/SearchResults?isbn=0879235799&sts=t"
		doc = Nokogiri::HTML(open(url))
		puts 'doc'
		#puts doc
		price = doc.at_css("#main :nth-child(4) .price").text.delete('US$').strip
		shipping = doc.at_css("#main :nth-child(4) .shipping").text
		if shipping.include? "FREE"
			shipping = '0'
		else
			shipping = shipping.delete('Shipping:US$').strip
		end	
		pricef = price.to_f + shipping.to_f	
		prices = pricef.round(2).to_s
		@cheese.product_id = '3'
		@cheese.price = prices
		
		@cheese.time = time.to_s
		@cheese.save
		
	#	puts 'abes price ' + prices
	#	puts 'abes shipping ' + shipping



		@cheese = Cheese.new
		url =  "http://product.half.ebay.com/_W0QQprZ99626373"
		doc = Nokogiri::HTML(open(url))
		price = doc.at_css(".pdpbestpricestyle").text.delete('$')
		pricef = price.to_f
		shippingf = 3.99
		pricef = pricef + shippingf
		prices = pricef.round(2).to_s
		@cheese.product_id = '4'
		@cheese.price = prices
		@cheese.time = time.to_s
		@cheese.save
		
	#	puts 'Plenty half price ' + prices

		@cheese = Cheese.new
		url = "http://www.abebooks.com/servlet/SearchResults?isbn=1452101248&sts=t&x=58&y=15"
		doc = Nokogiri::HTML(open(url))
		puts 'doc'
		#puts doc
		price = doc.at_css("#main :nth-child(4) .price").text.delete('US$').strip
		shipping = doc.at_css("#main :nth-child(4) .shipping").text
		if shipping.include? "FREE"
			shipping = '0'
		else
			shipping = shipping.delete('Shipping:US$').strip
		end	
		pricef = price.to_f + shipping.to_f	
		prices = pricef.round(2).to_s
		@cheese.product_id = '3'
		@cheese.price = prices
		
		@cheese.time = time.to_s
		@cheese.save
		
	#	puts 'abes price ' + prices
	#	puts 'abes shipping ' + shipping


		@cheese = Cheese.new
		url =  "http://product.half.ebay.com/_W0QQprZ102761531"
		doc = Nokogiri::HTML(open(url))
		price = doc.at_css(".pdpbestpricestyle").text.delete('$')
		pricef = price.to_f
		shippingf = 3.99
		pricef = pricef + shippingf
		prices = pricef.round(2).to_s
		@cheese.product_id = '7'
		@cheese.price = prices
		@cheese.time = time.to_s
		@cheese.save
		
	#	puts 'Ruhlman half price ' + prices


		@cheese = Cheese.new
		url = "http://www.abebooks.com/servlet/SearchResults?isbn=0811876438&sts=t&x=51&y=14"
		doc = Nokogiri::HTML(open(url))
		puts 'doc'
		#puts doc
		price = doc.at_css("#main :nth-child(4) .price").text.delete('US$').strip
		shipping = doc.at_css("#main :nth-child(4) .shipping").text
		if shipping.include? "FREE"
			shipping = '0'
		else
			shipping = shipping.delete('Shipping:US$').strip
		end	
		pricef = price.to_f + shipping.to_f	
		prices = pricef.round(2).to_s
		@cheese.product_id = '3'
		@cheese.price = prices
		
		@cheese.time = time.to_s
		@cheese.save
		
	#	puts 'abes price ' + prices
	#	puts 'abes shipping ' + shipping


end							# scrape one
end							# cheese.rb
