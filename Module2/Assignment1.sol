// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract SimpleStorage {
    uint storedData;
    uint updatedData;
    bool dataUpdated;

    function set(uint x) public {
        storedData = x;
        updatedData = x;
        dataUpdated = true;
    }

    function get() public view returns (uint) {
        return storedData;
    }

    function getUpdatedData() public view returns (uint, bool) {
        return (updatedData, dataUpdated);
    }
}
