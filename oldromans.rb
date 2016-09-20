#make a program that gives "old roman numerals" when given an english number
# numbers like "iv" for "4" do not exist yet.
def old_roman_numerals
  key_hash = { 1000 =>  "M", 500 => "D",
               100 => "C", 50 => "L", 
               10 => "X", 5 => "V",
               1 => "I"
              }

	numerals = []
	while true
    numerals.clear
    puts "Give a number under 10,000 to convert to 'old' Roman numerals..."
    puts "Simply enter 'end' to leave the program."
    num = gets.chomp
    if num == "end"
      break
      exit
    elsif num.to_i <= 9999
      key_hash.each do |numvalue, romval|
        m = num.to_i / numvalue
        num = num.to_i - (m * numvalue)
        rm = romval * m
        numerals.push(rm)
      end
    elsif num.to_i > 9999
      puts "please select a number lower 10,000"
    else
      puts "please try again"
    end

    puts numerals.join()
  end
end

old_roman_numerals