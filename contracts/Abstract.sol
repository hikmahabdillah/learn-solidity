// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

abstract contract Abstrak{
    function getAngka(uint num1, uint num2) public virtual; // tidak ada eksekusi hanya semacam blueprint saja

    function compute() public virtual view returns(uint); // menggunakan virtual 
}

// contract abstrak sebagai kerangka yang nantinya bisa digunakan sebagai blueprint untuk contract lain
contract Compute is Abstrak{
    uint panjang;
    uint lebar;

    function getAngka(uint num1, uint num2) public override { // agar function pada abstrak bisa diakses maka add override seperti di java
        panjang = num1;
        lebar = num2;
    }

    function compute() public override  view returns(uint){
        return panjang * lebar;
    }
}   
