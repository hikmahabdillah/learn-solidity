// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract MappingContract{
    mapping(address => uint) public maMap;

    function setData(address _address, uint _i) public{
        maMap[_address] = _i;
    }

    function getData(address _address) public view returns(uint){
        return maMap[_address];
    }
}