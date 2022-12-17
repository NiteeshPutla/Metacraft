// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0; //solidity version

contract Funcy {
    uint public balance;

    constructor(){
        balance = 0;
    }

    // payable function
    //payable functions are not derivable so it is set to public.

    function deposit() public payable {
        balance += msg.value;
    }

    // view function
    function getBalance() internal view returns (uint) {
        return balance;
    }

    // pure function
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}
