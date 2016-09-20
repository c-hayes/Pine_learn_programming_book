#gives leap years within a predefined range.
# bypasses years divisible by 100, but not by 400.
# exercise 7.5 in Pine Learn to Program

(1600..2020).each do |i|
 if  i %400 == 0
  puts "#{i} is a leap year"
 elsif i %4 == 0 and not i %100 == 0
  puts "#{i} is a leap year"
 else
 end
end