## Huge loop
Loops are usually the most executed part of a program, and the more statements are executed, the more **gas** is consumed. If the transaction contains an infinite loop, the transaction will fail after exhausting the **gas** paid by the caller, and **gas** will not be refunded. You should avoid the huge loop in contracts, and if you have to, try breaking the loop into pieces.
Bug type: context-related bug