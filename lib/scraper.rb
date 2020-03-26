module Covid
	class Scraper
		def initialize
		end 

		def load
			@doc = Nokogiri::HTML(open('https://www.worldometers.info/coronavirus'))
			@doc.search("#main_table_countries_today tbody:first tr").each do |table_row|
				name_column = table_row.search("td")[0]
				cases_column = table_row.search("td")[1]
				#binding.pry -- to check 
				#I think I can load the global number here, too. 
			
				c = Country.new
				c.name = name_column.text.strip
				c.total_cases = cases_column.text.strip
				c.save
			end 
		end 

		def load_global
			@page = Nokogiri::HTML(open('https://www.worldometers.info/coronavirus'))
			global_number = @page.search(".maincounter-number span")
			global_number = global_number[0].text.strip
		
		end 
	end
end  

	# .each do |el|
			# 	number = el.search('span')[0]
			# 	global_number = number.text.strip
			# end 
# open webpage
			# parse with ng
			# for each table row
			# instantiate an instance of the name and toat 
			# country class remembers all the data 
			# do that later, I can iterate through it
			#