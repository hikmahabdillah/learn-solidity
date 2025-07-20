// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract ParentA{
    uint internal a;

    function getAValue(uint _value)external{
        a = _value;
    }
}

contract ParentB{
    uint internal b;

    function getBValue(uint _value)external{
        b = _value;
    }
}

contract ParentC is ParentB, ParentA{
    ParentA A = new ParentA();
    ParentB B = new ParentB();
    function getComputeValue() external view returns(uint){
        return (a + b);
    }
}

contract caller{
    ParentC C = new ParentC();

    function getSum()public returns(uint){
        C.getAValue(22);
        C.getBValue(22);
        return(C.getComputeValue());
    }
}