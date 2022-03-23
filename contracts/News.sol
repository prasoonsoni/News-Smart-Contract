pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract News {
    uint256 public newsCount = 0;
    struct NewsInfo {
        uint256 id;
        address uploader_address;
        string title;
        string description;
        string publisher;
        string date_published;
        uint256 block_timestamp;
        uint256 block_number;
        bytes block_data;
    }
    NewsInfo[] newsInfos;
    
    mapping(uint256 => NewsInfo) public getNewsByID;

    function createNews(
        string memory _title,
        string memory _description,
        string memory _publisher,
        string memory date_published
    ) public {
        newsCount += 1;
        getNewsByID[newsCount] = NewsInfo(
            newsCount,
            msg.sender,
            _title,
            _description,
            _publisher,
            date_published,
            block.timestamp,
            block.number,
            msg.data
        );
        NewsInfo memory newsInfo = getNewsByID[newsCount];
        newsInfos.push(newsInfo);
    }

    function getNewsCount() public view returns (uint256) {
        return newsCount;
    }

    function getAllNews() public view returns (NewsInfo[] memory) {
        return newsInfos;
    }
}
