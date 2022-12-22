// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MessageGlobal{
    //This function returns the value that was sent with the message
    function messageValue() public payable returns (uint256) {
        return msg.value;
    }

    //This function returns the address of the message sender
    function messageSender() public view returns (address) {
        return msg.sender;
    }
    //This function returns the data of the message
     function messageData() public view returns (bytes memory) {
        return msg.data;
    }
    //This returns gasleft in the current message execution context.
      // function gasLeft() public view returns (uint256) {
       // return msg.gasleft;
    //}
  
}
