# Pine Learn to Program exercise 8.3
#user input's list items which are then alphabetized and printed.

def alphabetize
	sortedlist = [ ]
	unsortedlist = [ ]
  puts "\n" *2
	puts "Please give a list of words that you would like alphabetized."
  puts "Please give one item then hit 'enter' to enter another item."
	puts "To end you list, please enter 'end list'"
	while true
		info = gets.chomp.capitalize
		if info == "End list"
			break
		else 
			unsortedlist.push(newinfo)
		end
	end
	sortedlist = unsortedlist.sort
	
	puts "Your new alphabetized list will follow..."
	puts sortedlist
end

alphabetize