# Sum values List of couples by keys

Recently I faced this problem. Given a list of couples like this

[("Lemon", 22), ("Orange", 45), ("Orange", 45), ("Banana", 11), ("Lemon", 37), ("Orange", 8), ("Lemon", 54), ("Banana", 81)]

I needed a function that returns me another list of couples where, if the first value is the same, the numbers (second values) of those tuples must be added and, 
if not, that couple must be part of the final list too.

[("Banana",92),("Lemon",113),("Orange",98)]

Haskell, as usual, allowed me the way to write a clear, concise and elegant function to solve the problem.
this is a quite commons problem. So i decide to share my solution with a little explanation.

