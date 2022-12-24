// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


abstract contract AbstractCount {
    function count() external virtual view returns (uint);
}


interface ICount {
    function increment() external;
}

abstract contract MyContract is AbstractCount, ICount {
    function incrementCounter(address _counter) external {
        ICount(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return AbstractCount(_counter).count();
    }
}
