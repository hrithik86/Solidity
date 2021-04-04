pragma solidity ^0.4.24;

contract owned {
    constructor() public { owner = msg.sender; }
    address owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract mortal is owned {

    function close() public onlyOwner {
        selfdestruct(owner);
    }
}