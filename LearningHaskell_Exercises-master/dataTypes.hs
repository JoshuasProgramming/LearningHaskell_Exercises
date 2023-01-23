-- Dealing with numbers
add = 5 + 5
minus = 5 - 4
divide = 15 / 5
multi = 5 * 5

-- basic functions

-- We'll take in two integers and output a integer
combine x y = x + y


--making a factorial function

fact 0 = 1 -- if statement to state that if 0 is inputted we'll output 1
fact n = n * fact (n - 1) -- n equals (n * fact(n-1 * fact(n - 1))...)
