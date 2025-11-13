# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
We learned how to connect a clock input to a module, and that its output would be the "clock" input to the next module. The repeated series of connected modules provides a counting function from 0 to 6, resetting to 0 to start the count over.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The counter rolls over every N clocks (divide by N). The MSB bit takes twice as long to repeat (divide by 2N).

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
A ring counter goes to all 1s when it is not properly initialized to a one-hot pattern, causing the feedback logic to fill the register with 1s rather than circulating a single 1.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Every time we add a T-flipflop, the clock signal will be divided by 2. When we add 16 Tffs, the result will be 1525.878906, and if we were to do 17 Tffs, the result will be 762.9394531. 
