// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

// multi level inheritance berarti sebuah kontrak bisa menjadi anak dan bisa juga sebagai induk
contract ParentA{
    function getAValue() external pure returns(string memory){
        return "Contract A has called!";
    }
}

contract ParentB is ParentA{
    function getBValue() external pure returns(string memory){
        return "Contract B has called!";
    }
}

contract ParentC is ParentB{
    function getCValue() external pure returns(string memory){
        return "Contract C has called!";
    }
}

contract caller{
    ParentC contractC = new ParentC();
    function inherit() public view returns(string memory, string memory, string memory){
        return (contractC.getAValue(), contractC.getBValue(), contractC.getCValue());
    }
}