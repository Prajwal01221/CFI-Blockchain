// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.7.0 <0.9.0;
contract PersonalDetails {
    struct Aadhardetails {
        string name;
        string gender;
        uint DateofBirth;
        uint aadharnumber;
    }
    
    Aadhardetails[] userdetails;

 function storeAadhardetails(string memory _name, uint _DateofBirth, string memory _gender, uint _aadharnumber) private{
     userdetails.push(Aadhardetails(_name, _gender, _DateofBirth, _aadharnumber));
    }
    
    
    function storewalletaddress(string memory _publickey) private{
        
    }



}
