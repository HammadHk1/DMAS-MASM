# DMAS-MASM
This code is an x86 assembly program that performs various operations on user-inputted numbers and then sorts the results in descending order using the bubble sort algorithm. Let's go through the execution flow and provide an introduction, along with some notes.
## Introduction:
The code you provided is an assembly program that performs calculations and sorting on user-inputted numbers. It starts by displaying a set of rules and prompts the user to enter eight numbers. After that, it performs addition, multiplication, subtraction, and division operations on the input numbers. Finally, it sorts the results in descending order using the bubble sort algorithm and displays the sorted numbers.
## Execution Flow:
- The program starts with the label "start:".
- It initializes the data segment and sets it as the current segment using the "mov" instructions.
- The program displays a message containing rules for entering numbers using interrupt 21h, function 09h.
- The program takes input from the user for eight numbers using interrupt 21h, function 01h. The numbers are stored in variables var1, var2, var3, var4, var5, var6, var7, and var8.
- The program displays a space using interrupt 21h, function 09h.
- It performs addition by adding var1 and var2 and stores the result in sum1. It converts the sum1 value to ASCII and displays it on the screen using interrupt 21h, function 02h.
- It performs multiplication by multiplying var3 and var4 and stores the result in mul1. It converts the mul1 value to ASCII and displays it on the screen using interrupt 21h, function 02h.
- It performs subtraction by subtracting var6 from var5 and stores the result in sub1. It converts the sub1 value to ASCII and displays it on the screen using interrupt 21h, function 02h.
- It performs division by dividing var7 by var8 and stores the quotient in div1. It converts the div1 value to ASCII and displays it on the screen using interrupt 21h, function 02h.
- The program creates an array called "arr" and initializes it with the values of sum1, mul1, sub1, and div1.
- It initializes counters and temporary variables for the bubble sort algorithm.
- The program enters a loop labeled "L2" that repeats four times to sort the array.
- Within the loop, it compares two adjacent elements of the array and swaps them if they are not in descending order.
- After sorting, the program displays a space using interrupt 21h, function 09h.
- It displays a message "::::SORTED::::" using interrupt 21h, function 09h.
- The program displays the sorted numbers by converting them from ASCII to decimal using interrupt 21h, function 02h.
- Finally, the program exits by invoking interrupt 21h, function 4Ch.
## Notes:
- The program assumes that the user will enter valid numerical inputs for var1 to var8.
- The sorting algorithm used is a simple bubble sort, which is not the most efficient for larger datasets. Other sorting algorithms like quicksort or mergesort would be more efficient.
- The program could benefit from comments and clearer variable naming for better code readability and understanding.
- That's the execution flow and some notes about the code you provided.
##  Execution:
You have Download MASM 8086 to execute this code. After Download link your Dosbox with Bin Folder of Masm and put Code.asm file bin and run on Dosbox.
Do following Task to Mount
```
mount c C:\path\to\directory
```
```
C:
```
```
masm Code.asm;
```
```
link filename.obj;
```
```
filename.exe
```  
