# learn to program exercise: class baby dragon

class Dragon
  def initialize
    @name = true
    @awake = true
    @food_inside = 10.0 # full
    @food_pooper = 0.0 
    @bored = 0.0 
    @tired = 0.0
    @loved = 5.0

    system "clear" or system "cls"
    puts "\n" *2  
    puts "Your baby dragon is born."
    start
  end

  def start
    legend = ["Trogdor", "Elliot", "Mushu", "Smaug", "Ruby", "Emerald", "Diamond", "Saphire", "Dagron"]
    puts "\n" *2
    puts "What would you like to name it?"
    ARGV.clear
    name = gets.chomp.capitalize
    @name = name
    if legend.include?(name)
      puts "The Dragon of Legend Returns!!!"
    else 
      puts "#{@name} is a good name for a dragon."
    end
    action
  end

  def action
    while true
      puts "\n" *3
      puts "What would you like to do with #{@name}?"
      answer = gets.chomp.downcase
      puts "\n" *2
      answer_hash = {"feed" => feed, "bed" => bed, "walk" => walk, "play" => play, "pet" => pet, "help" => help, "more help" => more_help}
      time_pass
      if answer.include?(answer_hash)
        system "clear" or system "cls"
        if answer.include? "feed" 
          feed
        elsif answer.include? "bed" 
          bed
        elsif answer.include? "walk"
          walk
        elsif answer.include? "play"
          play
        elsif answer.include? "pet"
          pet
        elsif answer.include? "more help"
          more_help
        elsif answer.include? "help"
          help
        else 
          puts "Sorry, that may not be able to be done with a dragon, please try again."
          action
        end
      end
    end
  end

  def help
    puts "Your baby dragon needs to be fed, walked, played with, pet, and put to bed."
    puts "Dragons cannot talk, so you have to figure out what he needs and give it to him."
    puts "If you neglect him, he will either die -- or you will!"
    puts "For more help, enter 'more help'"
  end

  def more_help
    puts "Commands for your pet include..."
    puts "'feed' will give your dragon some food to eat."
    puts "'bed' will put your dragon to bed."
    puts "'walk' will take your dragon out for a walk."
    puts "'play' will get your dragon engaged and active"
    puts "'pet' will show your dragon that he is loved."
  end

  def feed
  # plus food_inside
    if @food_inside < 10
      puts "You feed #{@name}"
      @food_inside = 10
      puts "#{@name} is now full and can eat no more for now."
    else
      puts "Your dragon is full.  Maybe try something else."
    end
  end

  def bed
  #reset tired
    if @tired <=6 
      puts "#{@name} is not tired!"
    elsif @tired == (7..8)
      puts "Your lil dragon would not mind a nap."
      @tired = tired - 5
      puts "You put #{@name} to bed."
    elsif @tired >= 9
      puts "Your dragon is exhausted and will sleep all night."
      @tired = 0
      puts "You put #{@name} to bed."
    else 
      puts "--bed error--"
    end
  end

  def walk
  #reset pooper
    if @food_pooper > 1  
      puts "#{@name} takes you for a walk."
      puts "Watch your step, Dragons like to ... nevermind"
      puts " \n \t You clean up a mess."
      @food_pooper = 0 
      @loved = @loved + 0.5
    elsif 
      puts "He does not need to 'go' right now."
      puts "He does enjoy the exercise though."
      @loved = @loved + 0.5
    else 
      puts "--walk error--"
    end
  end

  def play
  #reset bored
    puts "You throw a ball."
    puts "#{@name} stares at you."
    puts "#{@name} likes to chase you, so you go for a mellow sprint."
    @bored = @bored - 1.5
    @tired = @tired + 0.5
    time_pass
  end

  def pet
  # plus loved
    puts "You scratch your dragon behind the wings."
    puts "You think he smiles."
    @loved = @loved + 2
  end

  private

  def hungry?
    #how to starving
  end

  def tired?
    #how to make limit no more than 10
  end

  def poop?
    #accidents
  end

  def loved?
    #depression
    #spoiled
  end

  def time_pass
    @food_inside = @food_inside - 0.5
    @food_pooper = @food_pooper + 0.5
    @tired = @tired + 0.25
    @bored = @bored + 0.15
    
  end

end

pet = Dragon.new