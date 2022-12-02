10 ' Define a map of cat food
20 DIM catFood(5)
30 catFood(1) = "tuna"
40 catFood(2) = "chicken"
50 catFood(3) = "beef"
60 catFood(4) = "salmon"
70 catFood(5) = "cat treats"

100 ' Define a function to feed the cat
110 DEF feedCat(catName)
120 PRINT "Feeding "; catName; " some yummy food!"
130 FOR i = 1 TO 5
140 PRINT catName; " eats a bite of "; catFood(i)
150 NEXT i
160 PRINT "Oh no, a dog showed up! Quick, "; catName; " try to distract it!"
170 END DEF

200 ' Call the feedCat function
210 catName1 = "Snuffy"
220 catName2 = "Cattie"
230 feedCat(catName1)
240 feedCat(catName2)
