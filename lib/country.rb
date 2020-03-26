module Covid
	class Country
		attr_accessor :total_cases, :name
		@@all = [] #class variable 

		def self.load_data
			Covid::Scraper.new.load
		end 

		def self.find(name)
			@@all.detect{ |c| c.name == name  }	
		end
			# this collects data for each country, and stroes it in class variable @@all 

			# this is "cheating" it will work, makes sure that menu can 
			#talk to fake country class. Did this first. 
			# puts "You found #{name}"
			# c = Country.new
			# c.name = "US"
			# c.total_cases = 40000
			# c
		
		def save 
			@@all << self
		end 

	end 
end 

