// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract NumberStorage{ //contract to store and modify value of number variable container
    uint256 pnum = 5; //Having being required to store a postive nuber i resort to use an unsigned integer, to store a positive number

    function AssigNum(uint256 _newNumber) public {
        pnum = _newNumber; //funcion publicly overwrites the assigned value of pnum variable with new value entered by contract client 
    }
    // I'll proceed to create a view function that allows user to call the odified or initialzed data
    function callNumber() public view returns (uint256) {
        return pnum;
    }

}
