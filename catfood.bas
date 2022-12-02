' Define a map of cat food
DIM catFood(5)
catFood(1) = "tuna"
catFood(2) = "chicken"
catFood(3) = "beef"
catFood(4) = "salmon"
catFood(5) = "cat treats"

' Define a function to feed the cat
DEF feedCat(catName1, catName2)
PRINT "Feeding "; catName1; " and "; catName2; " some yummy food!"

' Sort the cat food alphabetically
SORT catFood

' Loop through the cat food and feed each bite to the cats
FOR i = 1 TO 5
    PRINT catName1; " and "; catName2; " eat a bite of "; catFood(i)
NEXT i

' Print a message if a dog shows up
PRINT "Oh no, a dog showed up! Quick, "; catName1; " and "; catName2; " work together to distract it!"

END DEF

' Call the feedCat function
catName1 = "Snuffy"
catName2 = "Cattie"
feedCat(catName1, catName2)
