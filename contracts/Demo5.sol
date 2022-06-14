// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;
pragma experimental ABIEncoderV2;
contract Demo5 {
    struct Course {
        string id;
        string name;
        uint256 duration;
    }
    Course currentCourse;
    function setCourse() public {
        currentCourse = Course("POOP", "Python OOP", 35);
    }
    function getCourseId() public view returns (string memory) {
        return currentCourse.id;
    }
    function getCourse() public view returns (Course memory) {
        return currentCourse;
    }
}