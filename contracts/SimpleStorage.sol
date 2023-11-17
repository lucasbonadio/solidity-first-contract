// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // boolean, uint, int, address, bytes, string
    bool hasFavoriteNumber = true;
    uint256 public favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;

    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        People memory newPerson = People({
            favoriteNumber: _favoriteNumber,
            name: _name
        });
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
