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

' Sort the cat food alphabetically for Cattie
DIM catFoodAlpha(5)
FOR i = 1 TO 5
    catFoodAlpha(i) = catFood(i)
NEXT i
SORT catFoodAlpha

' Sort the cat food by length of the elements for Snuffy
DIM catFoodLength(5)
FOR i = 1 TO 5
    catFoodLength(i) = catFood(i)
NEXT i
SORT catFoodLength, getLengths(catFoodLength)

' Loop through the cat food and feed each bite to the appropriate cat
FOR i = 1 TO 5
    ' Feed a bite of alphabetically-sorted food to Cattie
    PRINT catName1; " eats a bite of "; catFoodAlpha(i)
    ' Feed a bite of length-sorted food to Snuffy
    PRINT catName2; " eats a bite of "; catFoodLength(i)
NEXT i

' Print a message if a dog shows up
PRINT "Oh no, a dog showed up! Quick, "; catName1; " and "; catName2; " work together to distract it!"

END DEF

' Call the feedCat function
catName1 = "Snuffy"
catName2 = "Cattie"
feedCat(catName1, catName2)
