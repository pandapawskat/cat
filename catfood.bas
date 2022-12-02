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

' Sort the cat food alphabetically and by length of the elements
DIM catFoodSorted(5)
catFoodSorted = catFood
SORT catFoodSorted, getLengths(catFoodSorted)

' Loop through the cat food and feed each bite to the appropriate cat
FOR i = 1 TO 5
    SELECT CASE i
        ' Cattie eats the first and third food items (alphabetically)
        CASE 1, 3
            PRINT catName1; " eats a bite of "; catFoodSorted(i)
        ' Snuffy eats the second and fourth food items (by length)
        CASE 2, 4
            ' Check if Snuffy has a seafood allergy and the food is tuna
            IF seafoodAllergy = TRUE AND catFoodSorted(i) = "tuna" THEN
                PRINT catName2; " has a seafood allergy and cannot eat "; catFoodSorted(i)
                PRINT catName1; " shares his bite of tuna with "; catName2
            ELSE
                PRINT catName2; " eats a bite of "; catFoodSorted(i)
            END IF
        ' Cattie eats the fifth food item (alphabetically)
        CASE 5
            PRINT catName1; " eats a bite of "; catFoodSorted(i)
    END SELECT
NEXT i

' Print a message if a dog shows up
PRINT "Oh no, a dog showed up! Quick, "; catName1; " and "; catName2; " work together to distract it!"

END DEF

' Call the feedCat function
catName1 = "Snuffy"
catName2 = "Cattie"
seafoodAllergy = TRUE
feedCat(catName1, catName2, seafoodAllergy)
