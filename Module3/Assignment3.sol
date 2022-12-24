// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;



contract MyMath {
    uint public a;
    uint public b;
   

    constructor(uint _a, uint _b){
        a = _a;
        b = _b;

    }

    // View function to add two numbers
    function add() public view returns (uint) {
        return a + b;
    }

    // Pure function to subtract two numbers
    function subtract(uint c, uint d) public pure returns (uint) {
        return c - d;
    }

    // View function to multiply two numbers
    function multiply() public view returns (uint) {
        return a * b;
    }
}
