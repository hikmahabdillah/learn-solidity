// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract Parent{
    uint internal id; // bisa diakses oleh kontrak turunannya

    function setValue(uint _value)public {
        id = _value;
    }
}

contract FirstChild is Parent{
    function getValue() public view returns(uint){
        return id;
    }
}