//SPDX-License-Identifier:MIT
pragma solidity 0.8.7;

contract Hotel {
    address payable public owner;
    enum stateofroom {Vacant,Occupied}
    stateofroom currentstate;
    constructor() {
        owner = msg.sender;
        currentstate = stateofroom.Vacant;
    }
    event registration(
        address indexed from,
        uint amount
    );
    function book(address from, uint amount) payable public {
        emit registration(
            msg.sender,
            amount
        );
        require(currentstate==stateofroom.Vacant,"Occupied");
        require(msg.value>=1,"More amount required");
        owner.transfer(msg.value);
        currentstate = stateofroom.Occupied; 
    }
   //uint cancellationday;
    event cancellation(
     uint cancellationday,

    )
    function cancel() payable public{
    
    }   
}  
