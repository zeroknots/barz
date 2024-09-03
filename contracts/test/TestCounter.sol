// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract TestCounter {
    int256 private count = 0;

    event CounterIncremented(int256 count);
    event CounterDecremented(int256 count);

    function incrementCounter() public {
        count += 1;
        emit CounterIncremented(count);
    }

    function decrementCounter() public {
        count -= 1;
        emit CounterIncremented(count);
    }

    function getCount() public view returns (int256) {
        return count;
    }

    function incrementWithRevert() public {
        count += 1;
        revert("CounterReverted");
    }
}
