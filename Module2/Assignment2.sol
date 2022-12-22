// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Deployed contract address:0x8c9eefa151bd6e3b7340d76683dd03b663d10c33
contract Twocalled {
    // NOTE: storage layout must be the same as contract oneCall
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

// Deployed contract address:0x61c7197d4cf31ccd77a66e729a591ed6a007b145
// using proxy contract onecall to twocalled :0x61c7197d4cf31ccd77a66e729a591ed6a007b145
contract OneCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _contract, uint _num) public payable {
        // OneCall's storage is set, Twocall is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}
