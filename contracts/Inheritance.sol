// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract Parent{
    uint internal id; // bisa diakses oleh kontrak turunannya

    function setValue(uint _value)external {
        id = _value;
    }
}

contract FirstChild is Parent{
    function getValue() external view returns(uint){
        return id;
    }
}

contract Caller{
    FirstChild fiChild = new FirstChild();

    function inherit(uint _input)public returns(uint){
        fiChild.setValue(_input);
        return fiChild.getValue();
    }
}