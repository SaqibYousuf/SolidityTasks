// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TimeLock {
    //depost and withdraw with deduction

    // uint public deduct = 10;
    // uint public counter = 1;
    // mapping(address => uint) public balances;

    // function deposit() public  payable {
    //     balances[msg.sender] += msg.value;
    // }

    // function widthDraw( address payable  _payee) public {
    //     // require(balances[msg.sender] >= _amount, "Insuffiient Balance");
    //     uint _amount =  balances[_payee];
    //     if(counter <= 3){
    //         uint transAmount = _amount - (_amount * counter / 100 * 10);
    //     _payee.transfer(transAmount);
    //     deduct = deduct + 10;
    //     counter++;
    //     }else{
    //     balances[msg.sender] += _amount;
    //     }
    // }

    // deposit and earn profit

    struct depoStruct {
        //Declaring different
        // structure elements
        uint256 time;
        uint256 value;
    }
    uint256 public counter = 1;
    uint256 time = block.timestamp;
    // uint public  time = block.timestamp;

    mapping(address => depoStruct) public balances;

    function deposit() public payable {
        balances[msg.sender].time = block.timestamp;
        balances[msg.sender].value += msg.value;
    }

    function widthDraw(address payable _payee, uint256 amount) public {
        uint256 updtime = block.timestamp;
        // return  time + 1 minutes;
        require(updtime > time + 1 minutes, "wait for 1 minutes");
        _payee.transfer(amount);
    }
}
