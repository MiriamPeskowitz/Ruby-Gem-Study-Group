To start: bundle gem covid
Then in gemspec, change metadata
then add bin/covid
	#!/usr/bin/env ruby

	puts "welcome"



What should this program do? 

Person will type in "covid"
What stats are you interested in? 
1. country
2. Global 

If 1. Enter country name
They enter name 
Total cases: xxx

Thus: two menus, first is an index 
To make it into a class: 
CovidStat class: (this would be the model 0--the things in there. )
	--pull data from source
	-- parse it
	-- match person's query
	--display the specific stats 

Menu Object  (this object would be the controller. Be the traffic cop.)
		-- #start
		-- menu
			--initial options
			--get input
			--delegates to menu choice 

AVI: Stub things out; write the code you wish you had. 
What object does it need to ask for this information. This is the uestio that matters 

Staretgy: it's decision by decision. step by step. You don't know stuff till you do it. 

Plan a little bit
Only do one thing at a time, then run it and make sure it works. 
Write a little code and confirm it. 




Requirements: 
A data source: where am i getting the info

A menu: communicates with the data source for info. 

Need a coutnry class 
a country.find method 
country isntances with name and total cases 