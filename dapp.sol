// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.7.0 <0.9.0;
contract PersonalDetails {
 mapping(string=>Aadhardetails)details;
    struct Aadhardetails {
        string name;
        string gender;
        string DateofBirth;
        uint aadharnumber;
    }
    
    Aadhardetails[] userdetails;

 function storeAadhardetails(string memory _name, string memory _DateofBirth, string memory _gender, uint _aadharnumber) public {
     details[_name].name=_name;
     details[_name].gender=_gender;
     details[_name].DateofBirth=_DateofBirth;
     details[_name].aadharnumber=_aadharnumber;
    }
    function getdetails(string memory _name)public view returns(string memory,string memory,string memory,uint){
       return(details[_name].name,details[_name].gender,details[_name].DateofBirth,details[_name].aadharnumber); 
        
    }
    
}
