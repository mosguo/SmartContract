// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
/**
 * @title Demo
 * @dev demo smart constract 
 */

 contract myDemo {
    string public message;
    uint256 number;

    //必須指定memory 關鍵字作為storage/memory 的參數類型指定。
    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    //lowest Wei requested 
    function doNother() public pure {
    }



 }