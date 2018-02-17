## Linked list 
* append adds a new node to the end of the list
* prepend adds a new node to the start of the list
* size returns the total number of nodes in the list
* head returns the first node in the list
* tail returns the last node in the list
* at(index) returns the node at the given index
* pop removes the last element from the list
* contains? returns true if the passed in value is in the list and otherwise returns false.
* find(data) returns the index of the node containing data, or nil if not found.
* to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
* insert_at(index) that inserts the node at the given index
* remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)

## Binary trees
1) BFS
2) DFS


1. Build a class Node. It should have a value that it stores and also links to its parent and children (if they exist). Build getters and setters for it (e.g. parent node, child node(s)).
2. Write a method build_tree which takes an array of data (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]) and turns it into a binary tree full of Node objects appropriately placed. Start by assuming the array you get is sorted.
3. Now refactor your build_tree to handle data that isn’t presorted and cannot be easily sorted prior to building the tree. You’ll need to figure out how to add a node for each of the possible cases (e.g. if it’s a leaf versus in the middle somewhere).
4. Write a simple script that runs build_tree so you can test it out.
5. Build a method breadth_first_search which takes a target value and returns the node at which it is located using the breadth first search technique. Tip: You will want to use an array acting as a queue to keep track of all the child nodes that you have yet to search and to add new ones to the list (as you saw in the video). If the target node value is not located, return nil.
6. Build a method depth_first_search which returns the node at which the target value is located using the depth first search technique. Use an array acting as a stack to do this.
7. Next, build a new method dfs_rec which runs a depth first search as before but this time, instead of using a stack, make this method recursive.