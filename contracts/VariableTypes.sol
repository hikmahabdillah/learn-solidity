// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract VariableTypes {
    // state variable
    uint public sum; // defaultnya private

    // local variable
    function tambah(uint num1, uint num2) public{
        // local
        uint temp = num1 + num2;
        sum = temp;
    }

    function getHasil()public view returns(uint){
        return sum;
    }
}

contract Types{
    bool public valid = true;

    int32 public angka1 = -32;
    uint public angka2 = 1;

    uint32 public ui_data =  8_07_2025;  
    
    uint8 result;

    function tambah() public{
        // result = 3/5;
        result = 3.5 + 2.5;
    }

    // bytes 1-32(memakan sedikit gas)
    // untuk menyimpan karakter yang sifatnya ukurannya tetap
    
    bytes1 public huruf = 'A';
    string public kalimat = "Hikmah Aldrin Abdillah - Web3/Blockchain Developer";

    // enum

}

contract MyEnum{
    enum Week {Mon, Tue, Wed, Thu, Fri, Sat, Sun}
    enum Jobs {FrontEndDev, Blockchain, Web3}

    function getEnumData() public pure returns(Jobs){
        return Jobs.Blockchain;
    }
}