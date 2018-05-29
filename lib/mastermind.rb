

# require 'colorize'
#
# class Gamecpu
#
# def initialize()
# @computer_mind = ['red','orange','yellow','green','blue','black','brown','white','purple']
#
# @computer_guess = []
# @secret_code = []
# @updated_code = []
# end
#
#
# def cpuplay
#
#
#
# puts "4 colors,for your secret code"
# puts "Enter color 1"
# answer = gets.strip.downcase
# @secret_code.push(answer)
#
# puts "Enter color 2"
# answer = gets.strip.downcase
# @secret_code.push(answer)
#
# puts "Enter color 3"
# answer = gets.strip.downcase
# @secret_code.push(answer)
#
# puts "Enter color 4"
# answer = gets.strip.downcase
# @secret_code.push(answer)
# puts "\n"
#
# until @updated_code.size == @secret_code.size || @computer_guess.length > 12
# p "computer is guessing..."
# sleep(3)
# cpuguess = @computer_mind.sample
#
# puts "computer guessed #{cpuguess}"
# puts "\n"
# @computer_guess.push(cpuguess)
#
# if @updated_code.include? cpuguess
# puts "Sorry cpu... #{cpuguess} already guessed!"
# puts "\n"
#
# elsif @secret_code.include? cpuguess
# puts "cpu guess of #{cpuguess} is correct!"
# puts "\n"
# @updated_code.push(cpuguess)
# p @updated_code
#
# else
# puts "Cpu guess of #{cpuguess} is wrong!"
# puts "\n"
# p @updated_code
#
# end
# end
#
# if @updated_code.length == 4
# puts "CPU has guessed all codes and won!"
#
# elsif @computer_guess.length > 12
# puts "CPU has lost! no more guesses left"
#
# end
#
# end
# end



class Gamehuman

attr_accessor :colors , :colorsguess , :chances


def initialize()

@colors = ['red','green','blue','yellow']
@colorsguess = []
@chances = 0

end

def humanplay

puts "Welcome to Mastermind..."
puts "Can you guess the four colors?"
puts "____ ____ ____ ____ \n"
puts ""

until @chances == 10 || @colorsguess.size == @colors.size
answer = gets.strip.downcase

if @colorsguess.include? answer
puts "already guessed try a different color"
@chances += 1
elsif @colors.include? answer
  puts "Correct..guess another color
   #{3 - @colorsguess.size} colors to guess left! \n "
  @colorsguess.push(answer)

  p @colorsguess
  @chances += 1
else
  puts "Wrong try again!"
  p @colorsguess
  @chances +=1
  case answer

  when 'brown'
  p "one of the colors does have an w in it..."
  when 'orange'
  p "that r and e look mighty familiar..."
  when 'purple'
  p "close...maybe try a color that makes purple"
  when 'black'
  p "close... bl..."
  when 'white'
  p "nope... that w may come in handy "
  else
  p "Perhaps a more common color,no?"
  end
end

end

if @colorsguess.size == @colors.size
  puts " \n All colors guessed! Congrats you've won!"
elsif @chances >= 10
  puts "no more guesses left! GAME OVER"

end

end

end




# puts "Welcome to Mastermind"
# puts  %{
#  __ __  __    __ _____ ___ ___ __ __ _ __  _ __
# |  V  |/  \ /' _/_   _| __| _ \  V  | |  \| | _\
# | \_/ | /\ |`._`. | | | _|| v / \_/ | | | ' | v |
# |_| |_|_||_||___/ |_| |___|_|_\_| |_|_|_|\__|__/
#
# }
# sleep(1)
#
# puts  """Would you like \n (a)to Solve the code OR
#  (b)Let the cpu solve yours?"""
# puts
# puts "Enter (a) or (b)"
# puts "\n"
#
# reply = gets.strip.downcase

# if reply == 'a'
#  G = Gamehuman.new
#   G.humanplay
# elsif reply == 'b'
#   G = Gamecpu.new
#  G.cpuplay
# end
