10 ' Define a map of cat food
20 DIM catFood(5)
30 catFood(1) = "tuna"
40 catFood(2) = "chicken"
50 catFood(3) = "beef"
60 catFood(4) = "salmon"
70 catFood(5) = "cat treats"

100 ' Define a function to feed the cat
110 DEF feedCat(catName1, catName2)
120 PRINT "Feeding "; catName1; " and "; catName2; " some yummy food!"

130 ' Sort the cat food alphabetically
140 SORT catFood

150 ' Loop through the cat food and feed each bite to the cats
160 FOR i = 1 TO 5
170 PRINT catName1; " and "; catName2; " eat a bite of "; catFood(i)
180 NEXT i

190 ' Print a message if a dog shows up
200 PRINT "Oh no, a dog showed up! Quick, "; catName1; " and "; catName2; " work together to distract it!"

210 END DEF

300 ' Call the feedCat function
310 catName1 = "Snuffy"
320 catName2 = "Cattie"
330 feedCat(catName1, catName2)
