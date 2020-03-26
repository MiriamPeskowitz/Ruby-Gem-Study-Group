module Covid
	class Menu

		def start
			Covid::Country.load_data
			main_menu
		end 

		def main_menu
			puts "What stats are you interested in?"
			puts "1. Global"
			puts "2. By Country"
			puts "3. Exit"

			puts "Enter Choice Number"
			
			choice = gets.strip
			case choice
			when "1"
				global_stats
			when "2"
				country_menu
			when "3"
				puts "Goodbye and Good Luck"
			end 
		end 

		def global_stats
			puts "you asked for global stats"
			main_menu
		end 

		def country_menu
			puts "Which country?"
			country_name = gets.strip

			country = Covid::Country.find(country_name)	
			puts "#{country.name} has #{country.total_cases} total cases."
			main_menu
		end

	end 
end 
