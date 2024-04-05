// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ledastorc {

    address public chairperson;
    address payable public creator;

    // Track funders addresses with their contributed amounts
    mapping (address => uint) public funders;

    bool public vote;
    uint level;

    struct Project {
        string name;
        uint duration;
        uint amount;
        address payable wallet; // Wallet address for the project
    }

    Project[] public projects;

    modifier canCreateProject() {
        require(level == 2, "only level 2 users can create proposal");
        _;
    }

    constructor() {
        chairperson = payable(msg.sender);
    }

    function createProject(string memory _name, uint _duration, uint _amount) public canCreateProject {
        require(bytes(_name).length > 0, "Project name must not be empty");
        require(_duration > 0, "Duration must be greater than zero"); // minimum funding duration is 1 day
        require(_amount > 0, "Amount must be greater than zero"); // target amount required for the project

        // Create a new wallet for the project
        address payable newWallet = payable(address(new ProjectWallet()));

        // Add project to project array
        projects.push(Project(_name, _duration, _amount, newWallet));
    }
    
    function ProjectWallet() {
        
}
