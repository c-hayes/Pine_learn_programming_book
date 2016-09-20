# Pine Learn to Program, Exercise 7.5
# produces the lyrics to 99 bottles with option to repeat.

def runsong
  puts "\n" * 3
  puts "Press 'enter' to advance the song."
  puts "\n" * 3
	99.downto(1) do |i|
		puts i.to_s + ' bottles of beer on the wall, ' + i.to_s + " bottles of beer;"
		puts "Take one down, pass it around;"
		newi = i - 1
		puts newi.to_s + ' bottles of beer on the wall!'
		request = gets.chomp
	end
	puts "No more bottles of beer on the wall, no more bottles of beer."
	puts "Go to the store and buy some more, 99 bottles of beer on the wall..."
	puts "\n" *6 
  while true
    puts "Would you like to sing again?"
    request = gets.chomp.downcase
    if request == "no"
      puts "\n" *3
      puts "Thanks for the song!"
      puts "\n" *3
      exit
    elsif request == "yes"
      runsong
    else
      puts "Please choose yes or no"
    end
  end
end
runsong