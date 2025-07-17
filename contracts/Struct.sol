// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract Structs{
    // structs
    // sekelompok elemen yang memiliki tipe data yang berbeda, digunakan untuk merepresentasikan record
    // seperti object dalam bahasa pemrograman lain
    struct Person{
        string nama;
        string jenis_kelamin;
        uint umur;
        bool isMarriage;
    }

    Person person1; // instansi objek baru

    function setPerson() public {
        person1 = Person("Ahmad", "Laki-laki", 20, false);
    }

    function getPerson() public view returns(Person memory){
        return person1;
    }

    Person person2 = Person("Budi", "Laki-laki", 21, false);

    function getPerson2() public view returns(string memory, string memory){
        return(person2.nama, person2.jenis_kelamin);
    }

    Person[] public person3;

    function setPerson3(string memory nama, string memory jenis_kelamin, uint umur, bool isMarriage) public {
        person3.push(Person(nama, jenis_kelamin, umur, isMarriage));
    }

    function personInfo(uint _index)public view returns(Person memory){
        return(person3[_index]);
    }
}