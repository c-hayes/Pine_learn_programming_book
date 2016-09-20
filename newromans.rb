#change your "old roman numerals" to give modern roman numerals when given an english number

def new_roman_numerals
  key_hash = { 1000 =>  "M", 900 => "CM",
               500 => "D", 400 => "CD",
               100 => "C", 90 => "XC",
               50 => "L", 40 => "XL",
               10 => "X", 9 => "IX",
               5 => "V", 4 => "IV",
               1 => "I"
              }

	numerals = []
	while true
    numerals.clear
    puts "Give a number under 4000 to convert to Roman numerals..."
    puts "Simply enter 'end' to leave the program." 
    puts "\n"
    num = gets.chomp
    if num == "end"
      break
      exit
    elsif num.to_i <= 4000
      key_hash.each do |numvalue, romval|
        m = num.to_i / numvalue
        num = num.to_i - (m * numvalue)
        rm = romval * m
        numerals.push(rm)
      end
    elsif num.to_i > 4000
      puts "please select a number lower than 4000"
    else
      puts "please try again"
    end
    
    puts numerals.join() 
    puts "\n"
  end
end

new_roman_numerals