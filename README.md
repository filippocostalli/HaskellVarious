# Sum values List of couples by keys

Recently I faced this problem. Given a list of couples like this

> [("Lemon", 22), ("Orange", 45), ("Orange", 45), ("Banana", 11), ("Lemon", 37), ("Orange", 8), ("Lemon", 54), ("Banana", 81)]

I needed a function that returns me another list of couples where, if the first value is the same, the numbers (second values) of those tuples must be added and, 
if not, that couple must be part of the final list too.

> [("Banana",92),("Lemon",113),("Orange",98)]

Haskell, as usual, allowed me the way to write a clear, concise and elegant function to solve the problem.
this is a quite commons problem. So i decide to share my solution with a little explanation.

Composing function is obviously the right way, in fp.

sumByKey = map ((\(k, v) -> (head k, sum v)) . unzip) . groupBy (\x y -> fst x == fst y) . sort    

Let's go ahead, step by step. We're gonna use the list above.

**sort** applied to the list returns <br />
[("Banana",11),("Banana",81),("Lemon",22),("Lemon",37),("Lemon",54),("Orange",8),("Orange",45),("Orange",45)]

The we apply **groupBy (\x y -> fst x == fst y)** that returns us <br />
[[("Banana",11),("Banana",81)],[("Lemon",22),("Lemon",37),("Lemon",54)],[("Orange",8),("Orange",45),("Orange",45)]]

**map unzip** applied to the previous returns the following <br />
[(["Banana","Banana"],[11,81]),(["Lemon","Lemon","Lemon"],[22,37,54]),(["Orange","Orange","Orange"],[8,45,45])]

It's time to apply a lambda that take the head of first and sum seconds
**map (\(k, v) -> (head k, sum v))**
Here we go!<br />
[("Banana",92),("Lemon",113),("Orange",98)]





