 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract StudentFile{ 

enum Status {Admitted, undergraduate, graduated}

struct Student{
    string name;
    uint256 matricNo;
    uint8 age;
    uint256 cgpa;
    Status status;
}

mapping (uint256 => Student) public students;
uint256[] public getmatricNumbers;

/*The struct 'Student' created is a custom datatype that groups related variables 
together i.e the name, cgpa, status etc.
 Structs are used to model real world entities 
 that aren't already found in the database. 

 Mapping, on the other hand defines how the data created or stored in the struct is 
 stored, referenced or accessed via thier linkage. Key-Value Pairs e.g 
 mapping 'uint to Student' allows fast access to the students record using thier 
 matric number
 */

function addstudent (
    string memory _name,
    uint256 _matricNo,
    uint8 _age,
    uint256 _cgpa) public {
        students [_matricNo] = Student(
            _name,
            _matricNo,
            _age,
            _cgpa,
            Status.Admitted  
        );
        getmatricNumbers.push (_matricNo);
    }

} 

