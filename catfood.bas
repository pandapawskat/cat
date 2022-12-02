' Define a map of cat food
DIM catFood(5)
catFood(1) = "tuna"
catFood(2) = "chicken"
catFood(3) = "beef"
catFood(4) = "cat treats"
catFood(5) = "milk"

' Define a function to feed the cat
DEF feedCat(catName1, catName2, seafoodAllergy)
PRINT "Feeding "; catName1; " and "; catName2; " some yummy food!"

' Sort the cat food alphabetically for Cattie
DIM catFoodAlpha(5)
catFoodAlpha = catFood
SORT catFoodAlpha

' Sort the cat food by length of the elements for Snuffy
DIM catFoodLength(5)
catFoodLength = catFood
SORT catFoodLength, getLengths(catFoodLength)

' Loop through the cat food and feed each bite to the appropriate cat
FOR i = 1 TO 5
    ' Feed a bite of alphabetically-sorted food to Cattie
    PRINT catName1; " eats a bite of "; catFoodAlpha(i)
    ' Feed a bite of length-sorted food to Snuffy, unless Snuffy has a seafood allergy and the food is tuna
    IF seafoodAllergy = TRUE AND catFoodLength(i) = "tuna" THEN
        PRINT catName2; " has a seafood allergy and cannot eat "; catFoodLength(i)
        PRINT catName1; " shares his bite of tuna with "; catName2
    ELSE
        PRINT catName2; " eats a bite of "; catFoodLength(i)
    END IF
NEXT i

' Print a message if a dog shows up
PRINT "Oh no, a dog showed up! Quick, "; catName1; " and "; catName2; " work together to distract it!"

END DEF

' Call the feedCat function
catName1 = "Snuffy"
catName2 = "Cattie"
seafoodAllergy = TRUE
feedCat(catName1, catName2, seafoodAllergy)
