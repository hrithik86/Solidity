pragma solidity ^0.4.24;

contract MessageContract{
    string private message="Hello World";
    function getMessage() public constant returns(string){
        return message;
    }
    function setMessage(string newMessage) public{
        message=newMessage;
    }
}