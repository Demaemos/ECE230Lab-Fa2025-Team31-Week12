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
We learned in this lab how to make two different types of counters, both utilzing different methods of dividing a clock signal by 2. The first method uses a combination of full adders and D-Flip Flops to count to a certain number, and the other uses chained T-Flip Flops to divide the clock signal by 2^N number of T-Flip Flops.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
A full adder chain is hooked up to a chain of registers, one for each bit/full adder. The register feeds the previously stored value back into the adder during the next clock signal, causing the adders to add 1 to the previously stored value. Because of the way counting in binary works, each sequential bit takes two changes of the preivous bit to chnage state. Each bit then represents a division by two of the previous bit. The number of bits you have then corresponds to how many times you divide by 2.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Before the first clock signal, all the T Flip Flops clock inputs and Q outputs are 0. When the first positive edge of the clock hits the first T-Flip Flop, it creates a positive edge on the output, which updates the next T-Flip Flop, so on and so forth. Thus, the positive edge update signal of the first clock cascades down all the T-Flip Flops and sets 1's on all outputs. 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Every time we add a T-flipflop, the clock signal will be divided by 2. When we add 16 Tffs, the result will be 1525.878906, and if we were to do 17 Tffs, the result will be 762.9394531. This is the closest we can get to 1kHz by dividing by 2.
