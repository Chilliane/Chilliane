pragma solidity ^0.6.0;

contract myContract{

    // Nested Mappings //Code would save votes under each of users eth addresses
    mapping(uint=>Votes) public votes;
    mapping(address=>mapping(uint=>Votes))public accountVotes;

    struct Votes{
        string pres;
        string vp;
        string sen1;
        string sen2;
        string sen3;
    }

    function addVote(uint _id,string memory _pres, string memory _vp,string memory _sen1, string memory _sen2, string memory _sen3) public{
        accountVotes[msg.sender][_id] = Votes(_pres,_vp,_sen1,_sen2,_sen3);
    }

}
