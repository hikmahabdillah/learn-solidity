// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract Parent{
    uint private data; // hanya bisa diakses oleh contract parent saja
    
    uint public info;

    constructor(){
        info = 44;
    }

    function increment(uint _num) private pure returns(uint){
        return _num + 1;
    }

    function setIncrement() public pure returns(uint){
        return increment(1);
    }

    // public
    function updateData(uint _num) public {
        data = _num;
    }

    function getData() public view returns(uint){
        return data;
    }

    function compute(uint _num1, uint _num2) internal pure returns(uint){// hanya bisa diakses oleh contract tsb dan contract warisannya
        return _num1 + _num2;
    }
}

// External Contract
// kontrak lain bisa mengakses data data yang sifatnya public di kontrak parent

contract External{
    function readData() public returns(uint){
        Parent par = new Parent();
        par.updateData(7);
        return par.getData();
    }
}

// inheritance dari parent(mewarisi semua yang ada di parent, data,state maupun function yang bersifat public dan internal)
contract Child is Parent{
    uint private result;
    Parent private _parent;

    constructor(){
        _parent = new Parent();
    }

    function getComputeResult() public{
        result = compute(1,2);
    }

    function getResult() public view returns(uint){
        return result;
    }

    function getNewData() public view returns(uint){
        return _parent.info();
    }
}