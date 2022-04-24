# 8: Crafting Elegant Code with Stacks and Queues
So far, our discussion around data structures has focused primarily on how they affect the performance of various operations. However, having a variety of data structures in your arsenal allows you to creae code that is simpler and easier to read.

Here, going to talk about stacks and queues which are both basically arrays with restrictions. These are good tools for handling temporary data.

## Stacks
A stack stores data in the same way arrays do but with the following constraints:
1. Data can only be inserted at the end of the stack
2. Data can only be read from the end of the stack
3. Data can only be removed from the end of the stack

Like a stack of dishes, you cant do anything to anything but the dish on top. LIFO.

### Stacks in Action
Although a stack is not usually used to store data on a long-term basis, it can be a great tool to handle temporary data as part of various algorithms.

Think of stacks being used for a JS linter- specifically looking for parens, brackets, and curly braces. You would push all the opening brackets/parens/etc. into a stack, and when we start getting their closing counter parts, they should "match" with their partners in the stack if the code is formatted correctly. If we've made it through the entire stack and there weren't any matching errors, we can say that at least this aspect of the code is formatted correctly.

## Queues
Also deal with temporary data elegantly and its like a stack in that its an array with restrictions.

You can think of a queue like a line of people at the movie theater- first one on the line is the first one to leave (LIFO)

Restrictions:
1. Data can only be inserted at the end of a queue (same as stack)
2. Data can only be read from the front of the queue (opposite of stack)
3. Data can only be removed from the front of the queue (opposite of stack)

Queues are the perfect tool for handling asynchronous requests - they ensure that the requests are handled in the order in which they were received. Also commonly used to model real-world scenarios where events need to occur in a certain order, such as airplans waiting for takeoff and patients waiting for their doctor.