// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
/**
 * @title Demo
 * @dev demo smart constract 
 */
contract myDemoNumber {
    int guessNumber;
    constructor(int initNumber) {
        guessNumber = initNumber;
    }
    function setNumber(int newNumber) public {
        guessNumber = newNumber;
    }

    function getNumber() public view returns (int) {
        return guessNumber;
    }


}