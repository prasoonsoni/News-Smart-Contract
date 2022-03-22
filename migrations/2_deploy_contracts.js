const News = artifacts.require("./News.sol");

module.exports = (deployer) => {
  deployer.deploy(News);
};