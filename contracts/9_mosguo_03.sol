// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
/**
 * @title Demo
 * @dev demo smart constract 
 */
 contract Demo2 {
    uint public numberToConvert;
    //uint256 result;
    function setNumber(uint n) public {
        numberToConvert = n;
    }
    function getResult() public view returns (string memory) {
        //uint256 result = 8765;
        return integerToString(numberToConvert);
    }
    function integerToString(uint i) internal pure returns(string memory) {
        if (i==0) { return "0"; } 
        uint j = i;
        uint len;
        while(j != 0) {
            len++;
            j/=10;
        }
        //create an array
        bytes memory bstr = new bytes(len);
        uint k = len-1;
        while (i!=0) {
            bstr[k--] = bytes1(uint8(48+(i%10)));
            i/=10;
        }
        return string(bstr);
     }
 }