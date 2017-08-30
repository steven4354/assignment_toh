p "hellow"

#gives instructions
#asks how hard - selecting the number of stacks
#creates an array with that number in A
#ask where to move the first item to then pops and pushes into the location and also asks if want to quit
#computer checks if the B array is filled in order if it is then say you win!

p "pick the level/number of stacks you want in the hanoi tower"

num = gets.chomp

A = []
B = []
C = []

i = num.to_i

until i == 0
  A << i
  i = i - 1
end

p "here is the initial layout. objective: move all the items to array C"
