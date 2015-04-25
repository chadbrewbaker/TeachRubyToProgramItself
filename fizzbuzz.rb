
def fizbuzz(num)
   case
   when num % 15 == 0 then "FizzBuzz"
   when num % 5 == 0 then "Fizz"
   when num % 3 == 0 then "Buzz"
   when ((num % 13 == 7) and (num > 300) and (num % 7 == 0))  then "Jaberwocky"
   else num
   end
end


