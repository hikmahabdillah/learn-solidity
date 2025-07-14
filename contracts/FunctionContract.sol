// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract ShowMessages{
    uint hasil;

    function getMessages() public pure returns(string memory) { // jika menggunakan pure tidak hanya return satu nnilai tanpa merubah variable state
        return 'Hello World';
    }

    function tambah(uint num1, uint num2) public{
        // lokal variable
        uint temp = num1 + num2;
        hasil = temp;
    }

    function getHasil() public view returns(uint){
        return hasil;
    }
}

// menerima dana ether dari salah satu akun
contract PayableContract{
    // function untuk menerima dana ether 
    uint receiveAmount;

    function receivedEther()payable public{
        receiveAmount = msg.value; //msg.value = nilai yang dikirimkan oleh account berupa wei
    }

    function getTotalAmount()public view returns(uint){
        return receiveAmount; 
    }

    // overload
    // fungsi yang namanya sama namun parameternya berbeda dan tidak ada return
    function tambah(uint num1, uint num2)public pure returns (uint hasil){
        hasil = num1 + num2;
    }

    function tambah(uint num1, uint num2, uint num3)public pure returns (uint hasil){
        hasil = num1 + num2 + num3;
    }
}