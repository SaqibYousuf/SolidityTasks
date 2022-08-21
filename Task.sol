// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Task {
    // Question 1
    string greet;

    constructor(){
        greet = 'hello world';
    }
   function Greet () public view returns(string memory) {
        return greet;
    }



    // Question 2
    int stateVariable = 10;

    function returnSateVariable() public view returns(int){
        return stateVariable;
    }

    
 function returnLocalVariable() public pure returns(int){
     int localVariable = 20;
        return localVariable;
    }

    
}