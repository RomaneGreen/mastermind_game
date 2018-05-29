require_relative "mastermind"
require_relative  "computer"


puts "Welcome to Mastermind"
puts  %{
 __ __  __    __ _____ ___ ___ __ __ _ __  _ __
|  V  |/  \ /' _/_   _| __| _ \  V  | |  \| | _\
| \_/ | /\ |`._`. | | | _|| v / \_/ | | | ' | v |
|_| |_|_||_||___/ |_| |___|_|_\_| |_|_|_|\__|__/

}
sleep(1)

puts  """Would you like \n (a)to Solve the code OR
 (b)Let the cpu solve yours?"""
puts
puts "Enter (a) or (b)"
puts "\n"

reply = gets.strip.downcase

if reply == 'a'
 G = Gamehuman.new
  G.humanplay
elsif reply == 'b'
  G = Gamecpu.new
 G.cpuplay
end
