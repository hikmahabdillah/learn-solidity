// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract Payable{
    address payable public owner; // pemilik dari smart contractnya

    constructor() payable{
        owner = payable(msg.sender); // ketika dideploy, pemilik dari smart contract adalah akun tersebut
    }

    function deposit() public payable{

    }

    function getBalance() public view returns(uint){
        uint amount = address(this).balance; // saldo yang ada pada ether
        return amount;
    }

    function withdraw()public {
        uint amount = address(this).balance; // saldo yang ada pada ether
        
        // semua yang dana yang ada akan dikirimkan ke owner(pemilik dari smart contract yang kita deploy)
        (bool success,) = owner.call{value: amount}(""); 
        require(success, "Failed to send ether to owner");
    }

    function transfer(address payable _receiver, uint amount) public {
        (bool success,) = _receiver.call{value: amount}(""); 
        require(success, "Failed to send ether to owner");
    }
}