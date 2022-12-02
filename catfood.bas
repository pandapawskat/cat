' Define a map of cat food
DIM catFood(5)
catFood(1) = "tuna"
catFood(2) = "chicken"
catFood(3) = "beef"
catFood(4) = "salmon"
catFood(5) = "cat treats"

' Define a function to sort an array alphabetically
DEF SORT(arr)
    ' Define a flag to keep track of whether the array is sorted
    sorted = 0
    
    ' Loop through the array until it is sorted
    DO UNTIL sorted = 1
        ' Reset the sorted flag to true
        sorted = 1
        
        ' Loop through the array, swapping any adjacent elements that are out of order
        FOR i = 1 TO LEN(arr) - 1
            IF arr(i) > arr(i+1) THEN
                ' Swap the elements
                temp = arr(i)
                arr(i) = arr(i+1)
                arr(i+1) = temp
                
                ' Set the sorted flag to false, since we made a swap
                sorted = 0
            END IF
        NEXT i
    LOOP
END DEF

' Define a function to feed the cat
DEF feedCat(catName1, catName2)
PRINT "Feeding "; catName1; " and "; catName2; " some yummy food!"

' Sort the cat food alphabetically using the SORT function
SORT catFood

' Loop through the cat food and feed each bite to the cats
FOR i = 1 TO 5
    PRINT catName1; " and "; catName2; " eat a bite of "; catFood(i)
NEXT i

