// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ToDolist {

    //I have to create my own datatype using struct to group all related todolist interacting functions and data
    struct List{
        string task;
        bool done;
    }
// I will be creating a dynamic array to store tasks as much as the user will want
    List [] public Tasks;

// This function would allow the user to add in new tasks to the list
    function addTask(string memory _task) public {
        Tasks.push(List(_task, false));
    }

//This function will allow user call view thier created list upon calling via the contract,although this would be shown literally only on the front end, due to remix decoding limitations on prague 
    function getList() public view returns (List[] memory) {
        return Tasks;
    }   

//Now i'll be adding another function to allow user call specific task upon calling its index number via the contract
    function getTask(uint256 _index) public view returns (string memory, bool) {
        List storage t = Tasks[_index];
        return (t.task, t.done);
    }

// This last function will enable the user to mark any task, using thier index no, as completed so that they can keep track of thier progress.
    function markAsDone(uint256 _index) public{
        Tasks[_index].done = true;
    }
}
