# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```
This project is a decentralized crowdfunding application

Ledastorc is a reliable and transparent aid distribution system, especially in times of crisis and displacement. It is a platform that helps validate ideas and causes as studies have shown that 42% of valuable ideas falter due to a lack of validation and support. And funding accessibility remains a significant barrier to advancing humanitarian causes.

It creates a secure and transparent platform for contributions, not only facilitating funding but also fostering trust among donors and recipients. Additionally, it leverages cryptocurrency enthusiasts' interest in impactful projects bringing new resources and innovation to the table.

Features:
1. Users can create proposals on the platform
2. The chairperson assigns level 1 and level 2 statuses to users
3. Only level 2 users can create proposals
4. Any user on the platform can fund any project of their interest
5. All funds for a project goes to the contract address
6. The creator of the proposal (creator) sets a funding target in terms of funding duration or amount
7. Once the target is reached, funding will be automatically discontinued
8. The funders will then vote for disbursement of funds to the to the creator account
9. The creator account will be funded by the chairperson 
10. In case of a tie, 3 funders will be selected randomly as tie breakers