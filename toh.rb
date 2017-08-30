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

init = A.dup

p "here is the status | A = #{A} | B = #{B} | C = #{C} |"
p "objective: move all the blocks from array A to C"

#making the loop

while true

  p "which array do you want to move a stack/number from?"

  from = gets.chomp

  if from == "A"
    stack = A.pop
  elsif from == "B"
    stack = B.pop
  elsif from == "C"
    stack = C.pop
  end

  p "you just moved stack: #{stack} from array: #{from}"
  p "which array do you want to put this stack/number into?"

  into = gets.chomp

  if into == "A"
    A << stack
  elsif into == "B"
    B << stack
  elsif into == "C"
    C << stack
  end

  p "here is the status | A = #{A} | B = #{B} | C = #{C} |"

  break if C == init

end
