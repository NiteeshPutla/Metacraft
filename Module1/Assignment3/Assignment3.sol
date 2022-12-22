// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event messLog(address indexed sender, string message);
    event messLog2(address indexed sender, string message);
    event messLog3(address indexed sender, string message);

    function test() public {
        emit messLog(msg.sender, "Hello World!");
        emit messLog2(msg.sender, "Hello EVM!");
        emit messLog3(msg.sender, "Hello vitalik");
    }
}