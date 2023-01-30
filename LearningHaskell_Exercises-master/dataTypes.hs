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

z = 400

--define a function that takes an integer and doubles it.
doubleX x = x + x

-- Using your answer to the previous question, define a function which multiplies its input by 4
multiplyBy4 x = x * 4

--Define a function that takes two inputs and subtracts the smaller one from the bigger one.
--Note: you might want to use an if expression (although you could also use the abs function).

highMinusLow :: Integer -> Integer -> Integer

highMinusLow x y = do
    if x > y 
        then x - y
    else y - x

-- Define a function xor taking two boolean inputs which computes the exclusive OR function.
--Include its type signature

-- Xor :: Boolean -> Boolean -> Boolean

xor :: Bool -> Bool -> Bool
xor False False = False
xor False True = True
xor True False = True
xor True True = False

-- Write a recursive function upTo :: Integer -> Integer which computes the sum from 0
--to its input, i.e., where upTo n calculates the sum of n + (n − 1) + ... + 1 + 0.
--For example, upTo 5 should equal 15.
--Hint: The shape of this code is very similar to the factorial function we defined in Lecture 2.

upTo :: Integer -> Integer
upTo 0 = 0
upTo 1 = 1
upTo n = n + upTo(n - 1)

-- sumInterval :: Integer -> Integer -> Integer
-- --base case
-- sumInterval x y = do
--     if x == y
--         then x
--     else x = 5


-- countDown :: Integer -> Integer 
-- sum = 0
-- countDown 0 = 0
-- sum = sum + 1
-- countDown n = countDown(n - 1)


-- isRange :: (Integer, Integer) -> Bool

-- getting the 1st and 2nd items in an array/list
-- To keep on nesting you'll need to keep on nesting
f (x: (y : _)) = (x,y) --gets 1st and 2nd item
g (x: (y : (z: _))) = (x,y,z) --gets 1st, 2nd and 3rd item
h (x: (y : (z: (a : _)))) = (x,y,z,a) --gets 1st, 2nd, 3rd and 4th item

q (x,y) = x
