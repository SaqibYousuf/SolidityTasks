// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Task {
    // task1
    function digitSum(int _num)public pure returns(int){
         int number = _num;
         int sum = 0;
         while (number != 0) {
            sum = sum + number % 10;
            number = number / 10;
        }
        return sum;
         
    }

    // // task 2
    //     uint[] public arr2  = [1,2,3];
    //     function nthTerm(uint n, uint a, uint b, uint c) public view returns(uint){
    //         uint i;
    //         uint sum = 0;
    //         for(i = 0; i < n; i++){
    //         sum += arr2[i];
            
    //         }
    //         return arr2.length;
    // }


}
