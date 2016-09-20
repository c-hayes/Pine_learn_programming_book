def grandma
	puts "You sit down with grandma to have a nice conversation."
   bye_counter = 0
	while true
		puts "What do you want to tell grandma? \n\t"
		respond = gets.chomp
		if respond == "count"
      puts bye_counter
    elsif respond != respond.upcase
			puts "\n \n HUH?! SPEAK UP DEAR! \n \n"
		elsif respond == respond.upcase
			if respond == "BYE" && bye_counter ==0
        bye_counter = bye_counter + 1
        puts "\n \n Oh, yes sweetie.  It was back in the good ole days.\n \n "
			elsif respond == "BYE" && bye_counter < 2
        bye_counter = bye_counter + 1
        puts "\n \n I most certanly do not agree with your assessment of my past.\n \n "
      elsif respond == "BYE" && bye_counter == 3
				puts "You shake your head and walk away from Grandma.\n \n "
				break
			else
				puts "\n \n NO, NO ... NOT SINCE " + (rand(1930...1951)).to_s + "!! \n \n"
			end
		end
	end
end

grandma