const News = artifacts.require("./News.sol");

module.exports = function(deployer) {
  deployer.deploy(News);
};