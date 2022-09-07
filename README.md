# Assembly_lang
Assembly language programming done for Intel 8086 microprocessor in Emu8086 application.
# Table of contents
1. [Functions](#functions)
2. [Variables and Arrays](#variables-and-arrays)
3. [Flow Control Instructions](#flow-control-instructions)
4. [Library Functions (using macros/procedures)](#library-functions-using-macros-and-procedures)
5. [Arithmetic and Logic Instructions](#arithmetic-and-logic-instructions)
6. [Bit Shift](#bit-shift)
7. [Stack and Procedure](#stack-and-procedure)
8. [Combined](#combined)


 
##  Functions 

**File name:**

**Program description:** 
- Takes 1 single-key input 
- Displays a space on screen after the input (ASCII value for ‘space’ is 20h) 
- Displays the input taken earlier using the single-key output function 

**Sample input and output:**
```dos
E E
```
* * *
**File name:**

**Program description:**
- Takes 2 single-key inputs 
- Inserts a space on screen after the inputs (ASCII value for ‘space’ is 20h) 
- Displays the inputs using the single-key output function

**Sample input and output:**
```dos
k2 k2
```
* * *
**File name:**

**Program description:**
- Takes 2 single-key inputs, displays the inputs in reverse order. 

**Sample input and output:**
```dos
4FF4
```
- Takes 3 single-key inputs, display the inputs in reverse order. A space separates the inputs and outputs 

**Sample input and output:**
```dos
4eF Fe4
```
* * *
## Variables and Arrays
**File name:**

**Program description:**
- Defines a string with lower-case characters and prints it in uppercase characters. 

**Sample input and output:**
```dos
hello 
HELLO 
```
* * *
**File name:**

**Program description:**
- Creates two arrays of size 5. 
- Arrays are filled with random numbers. 
- The contents of this array is copied onto a second array.
- The second array is printed in order without using loops.

**Sample input and output:**
```dos
2345e 
2345e 
```
* * *
**File name:**

**Program description:**
- Creates two arrays of size 7. 
- Arrays are filled with random numbers. 
- The contents of this array is copied onto a second array.
- The second array is printed in reverse order without using loops.

**Sample input and output:**
```dos
night23 
32thgin
```
* * *
## Flow Control Instructions
**File name:**

**Program description:**
- Takes a user input.
- If the input is character 1 or 3 or 5 displays ‘O’.
- If it is 2 or 4, displays “E”. if it is anything else, does nothing. 

* * *
**File name:**

**Program description:**
-  Reads a character and checks if the input contains an even number.
-  If it is even, prints ‘e’ and if it’s an odd number prints ‘o’. 
* * *
**File name:**

**Program description:**
- Prints letters A-Z with each character in a newline
* * *

## Library Functions using macros and procedures
**File name:**

**Program description:**
- Prompts the user to enter two numbers.
- Takes the inputs and shows the difference between the two numbers.  
* * *
**File name:**

**Program description:**
- Prompts the user to enter two numbers, take the inputs and shows the 
multiplication of those two numbers in a new line. 
- Clear the window and takes a third input as “divisor” and divides the multiplied result.
- Shows the answer in a new line.  
* * *

## Arithmetic and Logic Instructions
**File name:**

**Program description:**
- Reads  8  numbers  (using  scan_num). 
- Calculates  the  average  (using  bit-shift  instructions)  and  displays  them  on  the screen. 
* * *

## Bit Shift
**File name:**

**Program description:**
- Reads  8  numbers  (using  scan_num). 
- Calculates  the  average  (using  bit-shift  instructions)  and  displays  them  on  the screen. 
* * *

## Stack and Procedure 
**File name:**

**Program description:**
- Takes 15 single-key inputs. When the given size is exceeded, shows the line 
“the given size exceeded” if not, shows the output line in both normal order and in reverse order.
- If the stack is empty shows the line “the stack is empty”.
* * *

## Combined  
**File name:**

**Program description:**
- Reads a 16 bit binary number and prints the  number in the decimal number system on the next line. 
* * *
**Sample input and output:**
```dos
Enter a binary number: 0100000000000001 
Decimal: 16385 
```
* * *
**File name:**

**Program description:**
- Reads a decimal number.
- Prints the number in the binary number system, and the number of '0’ bits in that number on subsequent lines.
* * *
**Sample input and output:**
```dos
Enter a decimal number: 16385 
Binary: 0100000000000001 
Number of ‘0’s: 14 
```
* * *
**File name:**

**Program description:**
- Displays the factorials of numbers from 1 to 8 each in a separate line. 
* * *
**Sample output:**
```dos
1 
2 
6 
24 
120 
720 
5040 
40320 
```
* * *
