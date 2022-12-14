' Define a map of cat food
DIM catFood(5)
catFood(1) = "tuna"
catFood(2) = "chicken"
catFood(3) = "salmon"
catFood(4) = "cat treats"
catFood(5) = "milk"

' Define a function to feed the cat
DEF feedCat(catName1, catName2, seafoodAllergy)
PRINT "Feeding "; catName1; " and "; catName2; " some yummy food!"

' Sort the cat food alphabetically and by length of the elements
DIM catFoodSortedAlpha(5)
catFoodSortedAlpha = catFood
SORT catFoodSortedAlpha

DIM catFoodSortedLength(5)
catFoodSortedLength = catFood
SORT catFoodSortedLength, getLengths(catFoodSortedLength)

' Loop through the alphabetically-sorted cat food and feed each bite to Cattie
FOR i = 1 TO 5
    PRINT catName1; " eats a bite of "; catFoodSortedAlpha(i)
NEXT i

' Loop through the length-sorted cat food and feed each bite to Snuffy, unless Snuffy has a seafood allergy and the food is tuna or salmon
FOR i = 1 TO 5
    ' Store the name of the food in a variable
    food = catFoodSortedLength(i)

    IF seafoodAllergy = TRUE AND (food = "tuna" OR food = "salmon") THEN
        PRINT catName2; " has a seafood allergy and cannot eat "; food
        PRINT catName2; " shares his bite of "; food; " with "; catName1
    ELSE
        PRINT catName2; " eats a bite of "; food
    END IF
NEXT i

' Print a message thanking Snuffy for sharing his food
PRINT "Thank you, Snuffy, for being so generous with your food!"

' Loop through the length-sorted cat food again and print a message thanking Snuffy for each bite of food he shared
FOR i = 1 TO 5
    ' Store the name of the food in a variable
    food = catFoodSortedLength(i)

    IF seafoodAllergy = TRUE AND (food = "tuna" OR food = "salmon") THEN
        PRINT "Thank you for sharing your bite of "; food; " with "; catName1; "!"
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
