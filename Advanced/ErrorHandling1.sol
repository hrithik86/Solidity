pragma solidity ^0.4.24;

contract Bank {
 mapping(address => uint) public accounts;

 function deposit() public payable {
    require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error"); 
    accounts[msg.sender] += msg.value;
 }
 
 function withdraw(uint money) public {
    require(money <= accounts[msg.sender]);
    accounts[msg.sender] -= money;
 }
}