10 ' Define a map of cat food
20 DIM catFood(3)
30 catFood(1) = "tuna"
40 catFood(2) = "chicken"
50 catFood(3) = "beef"

100 ' Define a function to feed the cat
110 DEF feedCat(catName)
120 PRINT "Feeding "; catName; " some yummy food!"
130 FOR i = 1 TO 3
140 PRINT catName; " eats a bite of "; catFood(i)
150 NEXT i
160 END DEF

200 ' Call the feedCat function
210 catName = "Whiskers"
220 feedCat(catName)
