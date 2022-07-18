//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract good{
    address public helper;
    address public owner;
    uint public num;

    constructor( address _helper){
        helper= _helper;
        owner= msg.sender;
    }

    function setnum(uint _num)public{
        helper.delegatecall(abi.encodeWithSignature("setnum(uint256)",_num));
        
    }
}