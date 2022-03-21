pragma solidity ^0.5.0;

contract News{
    uint public newsCount = 0;
    struct NewsInfo {
        uint id;
        string title;
        string description;
        string publisher;
        string dateCreated;
    }

    mapping(uint => NewsInfo) public newsInfos;

    function createNews(string memory _title, string memory _description, string memory _publisher, string memory _timeCreated) public {
        newsCount += 1;
        newsInfos[newsCount] = NewsInfo(newsCount, _title, _description, _publisher, _timeCreated);
    }

}

