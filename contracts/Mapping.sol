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

contract NestedMapping{
    mapping(address => mapping(uint => bool)) public nested;

     function setData(address _address, uint _i, bool _boo) public{
        nested[_address][_i] = _boo;
    }

    function getData(address _address, uint _i) public view returns(bool){
        return nested[_address][_i];
    }
}