# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Michelle Joo
Matt DeRoos

## Summary
In this lab we looked at how subtraction using full adders and half subtractor works. We compared the behavior of a half subtractor with a full adder from the previous lab. The truth tables for both circuits are similar. The half subtractor outputs a borrow instead of a carry like the full adder.

Ones complement allows subtraction and it has an end‑around carry when a carry is output from the MSB
most significant bit.

Twos complement is implemented by inverting all bits of a number and then adding one. This method does not need end-arond carries.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
A half adder adds two 1 bit numbers and outputs a sum and a carry. A half subtractor subtracts one 1 bit number from another and outputs a difference and a borrow. The truth tables are similar, but instead of producing a carry when the result is too large, the half subtractor produces a borrow when the resultis too small.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry means that when a carry comes out of the MSB, it has to be added back to the LSB. This makes the circuit more complicated because the carry has to loop back into the addition, which can require extra logic and make the implementation harder.

### 3 - What is the edge case and problem with Two’s Complement number representation?
One edge case with two's complememt is that the range of numbers is not perfectly balanced. There is one more negative number than positive numbers. For example, with 8 bits you can represent -128 to 127, so the most negative number cannot be represented as a positive value. 

