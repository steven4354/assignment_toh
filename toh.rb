p "hellow"

#gives instructions
#asks how hard - selecting the number of stacks
#creates an array with that number in A
#ask where to move the first item to then pops and pushes into the location and also asks if want to quit
#computer checks if the B array is filled in order if it is then say you win!

p "pick the level/number of stacks you want in the hanoi tower"

num = gets.chomp

a = []
b = []
c = []

i = num.to_i

until i == 0
  a << i
  i = i - 1
end

init = a.dup

p "here is the status | a = #{a} | b = #{b} | c = #{c} |"
p "objective: move all the blocks from array a to c"

#making the loop


while true

  a_replay = a.dup
  b_replay = b.dup
  c_replay = c.dup

  p "which array do you want to move a stack/number from?"

  from = gets.chomp

  if from == "a"
    stack = a.pop
  elsif from == "b"
    stack = b.pop
  elsif from == "c"
    stack = c.pop
  end

  p "you just moved stack: #{stack} from array: #{from}"
  p "which array do you want to put this stack/number into?"

  into = gets.chomp

  if into == "a"
    a << stack
  elsif into == "b"
    b << stack
  elsif into == "c"
    c << stack
  end

  if a != a.sort.reverse || b != b.sort.reverse || c != c.sort.reverse
    p "error! this cannot be done. please retry"
    a = a_replay
    b = b_replay
    c = c_replay
  end

  p "here is the status | a = #{a} | b = #{b} | C = #{c} |"

  break if c == init

end
