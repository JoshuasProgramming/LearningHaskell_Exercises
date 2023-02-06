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


--Reordering (Always make case statements/ if statement in numerical order)
u 0 = "0"
u 1 = "1"
u _ = "Random"

myUnzip :: [(a,b)] -> ([a], [b]) --type signature
myUnzip [] = ([], []) --(base case)
myUnzip ((a,b) : rest) = 
    case myUnzip rest of 
        (as, bs) -> (a:as, b:bs)

myZip :: [a] -> [b] -> [(a,b)] --type signature
myZip [] _= [] --no a's (base case)
myZip _ [] = [] -- no b's (base case)
myZip (a: as) (b:bs) = (a,b) : myZip as bs --(recursive case)

------------------------------------------------ASSIGNMENT 1 REVISION----------------------------------------------------------------

--1a) What is the type of the value (1 : [2])? 

--(1:[2]) is an integer array => We'll pattern match/concatenate the left '1' with the right '2' and combine into [1,2]

--1b) Using pattern matching, define a boolean function and3 that computes the conjunction of
--three boolean inputs. Include a type signature 
--e.g: and3 False False False

and3 :: Bool -> Bool -> Bool -> Bool
and3 False False False = False
and3 False False True = False
and3 False True False = False
and3 False True True = False
and3 True False False = False
and3 True False True = False
and3 True True False = False
and3 True True True = True


--1c) Give two definitions q1example1 and q1example2 which fully apply and3 with some
--example inputs to demonstrate its behavior.

q1example1 = and3 False True True
q2example2 = and3 True True True

--2a) Define a function isRange :: (Integer, Integer) -> Bool that matches on a pair and
--returns True if the first element of the pair is less than or equal to the second.
--e.g: isRange(5,10) 
isRange :: (Integer, Integer) -> Bool

isRange (x,y) | x <= y = True
isRange (x,y) | x > y = False


--2b) Define a function fromRange :: (Integer, Integer) -> [Integer] which takes a
--valid range and creates a list of integers starting from the first component of the pair and
--ending at the second component of the pair, e.g.., fromRange (2,5) returns [2,3,4,5].
--If the range is not valid, return the empty list.

fromRange :: (Integer, Integer) -> [Integer]
fromRange (start, end)
  | start > end = [] --base case | if start is greater than end, output nothing
  | otherwise = [start..end] -- case | if start is less than end, output from start to end

--2c)Give a top-level definition q2example demonstrating your function.
q2example = fromRange (2,5)

--3) Define a polymorphic function of type:
--everyOther :: [a] -> Bool -> [a]
--which outputs a list based on the elements of the input list where if the second parameter is True
--then only elements at even positions are included and if the second parameter is False then only
--elements at odd positions are included (where we count positions starting at 0, i.e., the head of
--a list is position 0).
--For example, everyOther [1,2,3,4,5] True = [1,3,5] and everyOther [’a’,’b’,’c’,’d’]
--False = [’b’, ’d’] 

-- everyOther :: [a] -> Bool -> [a]

everyOther [(x,y,z)] = [x,y,z] !! 0



--------list 
example :: [(Integer, Bool)]
example = [ (1, False), (10, True), (3, True), (5, False), (9, True) ]

--exampleA :: [Integer]
exampleA = [1,10,3,5,9]

--exampleB :: [Bool]
exampleB = [False, True, True, True, True]

---mapping 
-- map :: (a -> b) -> [a] -> [b]

--filter
-- filter :: (a -> Bool) -> [a] -> [a]   

-- \x means to create a function
--e.g: map (\x -> x + 1) [1,2,3,4,5]
    -- is the same as: 
    -- [1,2,3,4,5].map((num){
    --num = num + 1
    --})
-- => [2,3,4,5,6]

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr c n [] = n
myFoldr c n (x:xs) = c x (myFoldr c n xs)




