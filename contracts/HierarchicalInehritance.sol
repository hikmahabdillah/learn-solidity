// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

// dalam konsep ini, kontrak dasar memiliki lebih dari 1 kontrak turunan
// contoh contract A memiliki 2 child yaitu contract B dan contract C

contract ParentA{
    function getAValue() external pure returns(string memory){
        return "Contract A has called!";
    }
}

contract ParentB is ParentA{

}

contract ParentC is ParentA{

}

contract caller{
    ParentB B = new ParentB();
    ParentC C = new ParentC();

    function getValue()public view returns(string memory, string memory){
        return (B.getAValue(), C.getAValue());
    }
}

