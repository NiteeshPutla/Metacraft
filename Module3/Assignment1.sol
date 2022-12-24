
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Wallet {
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    // Fallback function to handle incoming ether and to handle any unrecognizable calls
    fallback() external payable {
        require(msg.sender == owner, "Only the owner can send ether to this contract");
    }

    
        receive() external payable {
        require(msg.sender == owner, "Only the owner can send ether to this contract");
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function sendEther(address payable _to, uint _value) public {
        require(msg.sender == owner, "Only the owner can send ether from this contract");
        require(_to != address(0), "Invalid address");
        require(_value > 0, "Invalid amount");
        _to.transfer(_value);
    }
}
