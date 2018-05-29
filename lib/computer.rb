


class Gamecpu

def initialize()
@computer_mind = ['red','orange','yellow','green','blue','black','brown','white','purple']

@computer_guess = []
@secret_code = []
@updated_code = []
end


def cpuplay



puts "4 colors,for your secret code"
puts "Enter color 1"
answer = gets.strip.downcase
@secret_code.push(answer)

puts "Enter color 2"
answer = gets.strip.downcase
@secret_code.push(answer)

puts "Enter color 3"
answer = gets.strip.downcase
@secret_code.push(answer)

puts "Enter color 4"
answer = gets.strip.downcase
@secret_code.push(answer)
puts "\n"

until @updated_code.size == @secret_code.size || @computer_guess.length > 12
p "computer is guessing..."
sleep(3)
cpuguess = @computer_mind.sample

puts "computer guessed #{cpuguess}"
puts "\n"
@computer_guess.push(cpuguess)

if @updated_code.include? cpuguess
puts "Sorry cpu... #{cpuguess} already guessed!"
puts "\n"

elsif @secret_code.include? cpuguess
puts "cpu guess of #{cpuguess} is correct!"
puts "\n"
@updated_code.push(cpuguess)
p @updated_code

else
puts "Cpu guess of #{cpuguess} is wrong!"
puts "\n"
p @updated_code

end
end

if @updated_code.length == 4
puts "CPU has guessed all codes and won!"

elsif @computer_guess.length > 12
puts "CPU has lost! no more guesses left"

end

end
end
