// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Task {
    // task 1
    uint number;
    function set(uint _number) public {
        number = _number;
    }
    
    function get() public view returns(uint) {
        return number;
    }

    // task 2
    function evaluat(int a , int b) public pure returns(int) {
        int diff = a - b;
        int sum = a + b;
        int result = sum - diff;
        return result  ;
    }

    // task 3
function reminderCalc(int a) public pure returns(int) {
        int reminder = a % 3;
        return reminder  ;
    }

        // task 4

    function avergeCalc(int a , int b, int c) public pure returns(int) {
        int result = (a  + b + c) / 3;
        return result  ;
    }    


}


